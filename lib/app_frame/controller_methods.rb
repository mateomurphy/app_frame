module AppFrame
  module ControllerMethods
    def self.included(klass)
      klass.extend(ClassMethods)
    end
    
    def render_to_body(options = {})
      super
    rescue ActionView::MissingTemplate => e
      template = "app_frame/actions/#{action_name}"
      
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
        layout "app_frame/#{options[:layout] || 'default'}"
      end
    end
  end
end