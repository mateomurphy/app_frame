module AppFrame
  
  module ControllerMethods
    extend ActiveSupport::Concern
  
    module ClassMethods
      def app_frame(options = {})
        layout "#{AppFrame::theme}/#{options[:layout] || 'default'}"
        unless options[:resource] == false
          inherit_resources
          include PaginationSupport
          include HasManySupport
        end
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