module AppFrame::BreadcrumbHelper 
  
  def breadcrumb(items = [])
    
    yield items if block_given?
    
    return unless items.any?
    
    last = items.pop
    
    result = items.map { |i| content_tag(:li, i + content_tag(:span, "/", :class => 'divider')) }
    result << content_tag(:li, last, :class => 'active')
    
    content_tag :ul, result.join().html_safe, :class => 'breadcrumb'
    
  end
  
end