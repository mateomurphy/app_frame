module DisplayFor
  module Builder
    class View < ResourceBase
      attr_reader :template
    
      def build_row(attribute)
        result = ''.html_safe
        result << content_tag(:th, attribute.label(resource_class))
        result << content_tag(:td, attribute.content(resource))
        content_tag(:tr, result.html_safe)
      end
    
      def build_actions
        result = []
      
        @actions.each do |action|
          result << action.content(resource)
        end
      
        content_tag(:tr) do
          content_tag(:td, result.join("&nbsp;").html_safe, :colspan => 2)
        end
        
      end
  
      def to_s
        result = ''.html_safe
        @attributes.each do |attribute|
          result << build_row(attribute)
        end
        
        result << build_actions

        content_tag(:table, result, :class => 'bordered-table zebra-striped').html_safe
      end
    end
  end
end