module AppFrame
  
  module ControllerMethods
    extend ActiveSupport::Concern
  
    module ClassMethods
      def app_frame(options = {})
        layout "#{AppFrame::theme}/#{options[:layout] || 'default'}"
        unless options[:resource] == false
          inherit_resources
          include ResourceSupport
          include PaginationSupport
          include HasManySupport
          include SearchSupport
        end
      end
    end
    
    module ResourceSupport
      extend ActiveSupport::Concern
      
      included do
        helper_method :controller_namespaces
      end   
      
      def controller_namespaces
        result = self.class.to_s.split('::')
        result.pop
        result.map(&:underscore)
      end           
    end
    
    module SearchSupport
      extend ActiveSupport::Concern
      
      included do
        helper_method :searchable?
      end      
      
      def searchable?
        resource_class.respond_to?(:with_query)
      end
      
      def list_scope
        @list_scope ||= (controller_namespaces.map(&:to_s).join("_") + "_list").to_sym
      end
      
      def end_of_association_chain
        chain = super

        return chain if chain.is_a?(ActiveRecord::Base) #|| chain.is_a?(Array)
    
        chain = chain.with_query(params[:q]) if params[:q].present? && searchable?
    
        if params[:tags].present?
          tag_options = {}
          tag_options[:any] = true if params[:match] == 'any'
          chain = chain.tagged_with(params[:tags], tag_options) 
        end
    
        chain = chain.send(list_scope) if resource_class.respond_to?(list_scope)
    
        chain
      end      
    end
    
    module HasManySupport
      extend ActiveSupport::Concern

      included do
        helper_method :child_resources
      end

      module ClassMethods
        def child_resources
          @child_resources ||= []
        end

        def has_many(symbol, options = {})
          config = {
            :symbol => symbol, 
            :name => symbol.to_s.humanize, 
            :resource_class => symbol.to_s.classify.constantize,
            :resource_name => symbol.to_s.classify
          }.merge(options)

          self.child_resources << config
        end      
      end

      def child_resources
        self.class.child_resources
      end
    end

    module PaginationSupport
      extend ActiveSupport::Concern

      included do
        helper_method :count, :page, :per_page
      end
      
      # paginate collection
      def collection
        get_collection_ivar || set_collection_ivar(end_of_association_chain ? end_of_association_chain.page(page).per(per_page) : nil)
      end

      def page
        (params[:page] || 1).to_i
      end

      def per_page
        20
      end
      
      def count
        @count ||= if end_of_association_chain
          end_of_association_chain.count 
        else
          0
        end
      end
      
    end
    
  end
end