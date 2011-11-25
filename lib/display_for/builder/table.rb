module DisplayFor
  module Builder
    class Table < CollectionBase
      def build_header
        result = ''
        html_class = 'first'
        @attributes.each do |attribute|
          result << content_tag(:th, attribute.label(@resource_class), :class => html_class)
          html_class = nil
        end
        result << content_tag(:th, "Actions", :class => 'last') if @actions.any?

        content_tag(:thead, content_tag(:tr, result.html_safe)) << "\n"
      end
    
      def build_row(resource)
        result = ''
        @attributes.each do |attribute|
          result << content_tag(:td, attribute.content(resource))
        end
        result << content_tag(:td, build_actions(resource), :class => 'last') if @actions.any?

        content_tag(:tr, result.html_safe) << "\n"
      end
    
      def build_actions(resource)
        result = []
      
        @actions.each do |action|
          result << action.content(resource)
        end
      
        result.join("&nbsp;").html_safe
      end
  
      def to_s
        result = ''.html_safe
        
        @collection.each do |resource|
          result << build_row(resource)
        end

        result = build_header + content_tag(:tbody, result)

        content_tag(:table, result, :class => 'bordered-table zebra-striped').html_safe
      end
    end
  end
end