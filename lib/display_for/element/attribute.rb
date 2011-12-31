module DisplayFor
  module Element
    class Attribute < Base
      def label(resource_class)
        @options[:label] || resource_class.human_attribute_name(@name.to_s)
      end
    
      def content(resource)
        super || value(resource)
      end
    
      def value(resource)
        raise "#{resource.class} does not respond to #{@name}" unless resource.respond_to?(@name)
        
        result = resource.send(@name) 
        
        if @options[:type]
          result = template.send(:"number_to_#{@options[:type]}", result)
        end
        
        if [Date, DateTime, Time].include?(result.class) &&  @options[:format]
          result = template.l(result, :format => @options[:format])
        end
        
        result = link_to(result, resource) if @options[:link_to]
        result
      end
    
      def template
        @builder.template
      end
    
    end
  end
end