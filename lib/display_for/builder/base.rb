module DisplayFor
  module Builder
    class Base
      attr_reader :template, :namespace
      
      delegate :content_tag, :cycle, :to => :template      
      
      def initialize(template, &block)
        @template = template
        @attributes = []
        @actions = []
      
        block.call(self)
      end
      
      def attribute(name, options = {}, &block)
        @attributes << Attribute.new(self, name, options, &block)
      end
    
      def action(name, options = {}, &block)
        @actions << Action.new(self, name, options, &block)
      end
      
    end
  end
end