module DisplayFor
  module Builder
    class Table
      attr_reader :template
    
      delegate :content_tag, :cycle, :to => :template
    
      def initialize(resource_class, collection, template, &block)
        @collection, @template = collection, template
      
        if resource_class.is_a?(Array)
          @namespace = resource_class
          @resource_class = @namespace.pop
        else
          @namespace = []
          @resource_class = resource_class
        end
      
        @columns = []
        @actions = []
      
        block.call(self)
      end
    
      def namespace
        @namespace
      end
    
      def attribute(name, options = {}, &block)
        @columns << Attribute.new(self, name, options, &block)
      end
    
      def action(name, options = {}, &block)
        @actions << Action.new(self, name, options, &block)
      end
    
      def build_header
        result = ''
        html_class = 'first'
        @columns.each do |column|
          result << content_tag(:th, column.label(@resource_class), :class => html_class)
          html_class = nil
        end
        result << content_tag(:th, "Actions", :class => 'last') if @actions.any?

        content_tag(:tr, result.html_safe) << "\n"
      end
    
      def build_row(resource)
        result = ''
        @columns.each do |column|
          result << content_tag(:td, column.content(resource))
        end
        result << content_tag(:td, build_actions(resource), :class => 'last') if @actions.any?

        content_tag(:tr, result.html_safe, :class => cycle('odd', 'even')) << "\n"
      end
    
      def build_actions(resource)
        result = []
      
        @actions.each do |action|
          result << action.content(resource)
        end
      
        result.join("&nbsp;").html_safe
      end
  
      def to_s
        result = build_header
        @collection.each do |resource|
          result << build_row(resource)
        end

        content_tag(:table, result, :class => 'table').html_safe
      end
    end
  end
end