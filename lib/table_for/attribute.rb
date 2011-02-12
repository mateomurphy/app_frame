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
      result = link_to(result, resource) if @options[:link_to]
      result
    end
    
  end
end