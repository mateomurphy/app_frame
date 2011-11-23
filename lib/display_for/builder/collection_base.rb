module DisplayFor
  module Builder
    class CollectionBase < Base
      attr_reader :collection
      
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
      
      def default_actions
        action :show, :link_to => :resource_path, :class => 'small btn'
        action :edit, :link_to => :edit_resource_path, :class => 'small btn'
        action :delete, :method => :delete, :confirm => "Are you sure?", :class => 'small btn danger'
      end
    end
  end
end