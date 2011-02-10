module AppFrame
  
  module ControllerMethods
    def self.included(klass)
      klass.extend(ClassMethods)
    end
    
    def render_to_body(options = {})
      super
    rescue ActionView::MissingTemplate => e
      template = "#{AppFrame::theme}/actions/#{action_name}"
      
      if options[:template] == template
        # we're already tring to render this template and it wasn't found
        raise e
      else
        render :template => template
      end
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