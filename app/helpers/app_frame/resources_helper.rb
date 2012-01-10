module AppFrame::ResourcesHelper
  
  def collection?
    !!collection
  rescue NameError
    false
  end
  
  def resource?
    !!resource
  rescue NameError, ActiveRecord::RecordNotFound
    false
  end
  
  def resource_name
    resource_class.model_name.human
  end

  def parent?
    controller.respond_to?(:parent?) && controller.send(:parent?)
  end

  def parent_resource_class
    parent.class
  end
  
  def parent_resource_name
    parent_resource_class.model_name.human
  end

  def controller_namespaces
    result = controller.class.to_s.split('::')
    result.pop
    result.map(&:underscore)
  end
  
  def namespaced(string)
    if controller_namespaces.any?
      File.join(controller_namespaces, string)
    else
      string
    end
  end
  
  def resource_path_array
    result = controller_namespaces
    result << parent if parent?
    result << resource
  end
  
  def parent_collection_url
    return unless parent?
    
    result = controller_namespaces
    result << parent_resource_name.underscore.pluralize
    polymorphic_url(result)
  end
  
end