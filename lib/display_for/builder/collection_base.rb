module DisplayFor
  module Builder
    class CollectionBase < Base
      def initialize(resource_class, collection, template, &block)
        @collection = collection
      
        if resource_class.is_a?(Array)
          @namespace = resource_class
          @resource_class = @namespace.pop
        else
          @namespace = []
          @resource_class = resource_class
        end
      
        super(template, &block)
      end
      
    end
  end
end