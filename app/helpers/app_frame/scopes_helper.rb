module AppFrame::ScopesHelper
  # return all scopes configured in the controller
  def scopes
    controller.class.scopes_configuration || {}
  end

  # return only the boolean scopes
  def boolean_scopes
    scopes.select { |n, s| s[:type] == :boolean  }
  end
  
  # create a link to a scope (or no scopes), wrapped in a list item
  def scope_link(name, scope = nil)
    if scope
      link = url_for(scope => true)
      active = current_scopes.keys.include?(scope)
    else
      link = url_for
      active = current_scopes.empty?
    end
    
    content_tag(:li, link_to(name, link), :class => active ? 'active' : nil)
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