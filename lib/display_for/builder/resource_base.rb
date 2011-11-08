module DisplayFor
  module Builder
    class ResourceBase < Base
      attr_reader :resource
      
      def initialize(resource, template, &block)
        if resource.is_a?(Array)
          @namespace = resource
          @resource = @namespace.pop
        else
          @namespace = []
          @resource = resource
        end      

        @resource_class = @resource.class
      
        super(template, &block)
      end
      
    end
  end
end