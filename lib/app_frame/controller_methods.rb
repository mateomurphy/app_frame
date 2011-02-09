module AppFrame
  module ControllerMethods
    def self.included(klass)
      klass.extend(ClassMethods)
    end
    
    module ClassMethods
      def app_frame(options = {})
        layout 'app_frame'
      end
    end
  end
end