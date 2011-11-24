module AppFrame
  
  module ControllerMethods
    def self.included(base)
      base.extend(ClassMethods)
    end
  
    module ClassMethods
      def app_frame(options = {})
        layout "#{AppFrame::theme}/#{options[:layout] || 'default'}"
        unless options[:resource] == false
          inherit_resources
          include PaginationSupport
        end
      end
    end
    
    module PaginationSupport
      
      def self.included(base)
        base.helper_method :count, :page, :per_page
      end
      
      # paginate collection
      def collection
        get_collection_ivar || set_collection_ivar(end_of_association_chain.page(page).per(per_page))
      end

      def page
        (params[:page] || 1).to_i
      end

      def per_page
        20
      end
      
      def count
        @count ||= end_of_association_chain.count
      end
      
    end
    
  end
end