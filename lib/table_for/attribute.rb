module TableFor
  class Attribute < Column
    def label(resource_class)
      resource_class.human_attribute_name(@name.to_s)
    end
    
    def content(resource)
      super || value(resource)
    end
    
    def value(resource)
      result = resource.send(@name)
      result = template.l(result, :format => @options[:format]) if @options[:format] && [Date, DateTime, Time].include?(result.class)
      result = link_to(result, resource) if @options[:link_to]
      result
    end
    
    def template
      @builder.template
    end
    
  end
end