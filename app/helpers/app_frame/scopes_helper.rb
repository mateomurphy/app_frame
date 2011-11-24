module AppFrame::ScopesHelper
  # return all scopes configured in the controller
  def scopes
    controller.class.scopes_configuration || {}
  end

  # return only the boolean scopes
  def boolean_scopes
    @boolean_scopes ||= scopes.inject({}) do |result, element|
      result[element.first] = element.last if element.last[:type] == :boolean
      result
    end
  end
  
  # return only the filter (non boolean) scopes
  def filter_scopes
    @filter_scopes ||= scopes.inject({}) do |result, element|
      result[element.first] = element.last if element.last[:type] != :boolean
      result
    end
  end
  
  def current_boolean_scopes
    @current_boolean_scopes ||= current_scopes.inject({}) do |result, element|
      result[element.first] = element.last if boolean_scopes.keys.include?(element.first)
      result
    end
  end
  
  def current_filter_scopes
    @current_filter_scopes ||= current_scopes.inject({}) do |result, element|
      result[element.first] = element.last if filter_scopes.keys.include?(element.first)
      result
    end
  end
  
  # create a link to a scope (or no scopes), wrapped in a list item
  def scope_link(name, scope = nil)
    
    link = current_filter_scopes.dup
    
    if scope
      link[scope] = true
      active = current_boolean_scopes.keys.include?(scope)
    else
      active = current_boolean_scopes.empty?
    end
    
#    name = "#{name}: #{scope_count(scope)}"
    
    content_tag(:li, link_to(name, link), :class => active ? 'active' : nil)
  end

  def scope_count(scope)
    chain = controller.end_of_association_chain
    chain = chain.send(scope) if scope
    chain.count
  end

  # craete a navigation for all the boolean scopes
  def scope_nav
    return unless boolean_scopes.count > 0
    
    result = [scope_link("All")]
    
    boolean_scopes.each do |name, s|
      result << scope_link(name.to_s.humanize, s[:as])
    end
    
    content_tag :ul, result.join("\n").html_safe, :class => 'pills'
  end
end