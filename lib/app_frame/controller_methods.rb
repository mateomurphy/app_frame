module AppFrame
  
  module ControllerMethods
    def self.included(klass)
      klass.extend(ClassMethods)
    end
  
    module ClassMethods
      def app_frame(options = {})
        inherit_resources
        layout "#{AppFrame::theme}/#{options[:layout] || 'default'}"
        include PaginationSupport
      end
    end
    
    module PaginationSupport
      # paginate collection
      def collection
        get_collection_ivar || set_collection_ivar(end_of_association_chain.scoped.paginate(:page => params[:page], :per_page => per_page))
      end

      def per_page
        20
      end    
    end
    
  end
end