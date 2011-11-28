module AppFrame
  module BootstrapHelper
    def alert(message, type = nil)
      message = close_button + content_tag(:p, message)
      content_tag(:div, message, :class => "alert-message #{alert_type_map(type)} fade in", :'data-alert' => "alert")
    end
    
    def close_button
      link_to("&times;".html_safe, '#', :class => 'close')
    end
    
    def alert_type_map(type)
      map = {
        :notice => 'success'
      }
      
      map[type.to_sym]
    end
    
    def page_header(title, &block)
      content = "".html_safe
      content += content_tag(:div, capture(&block), :class => 'page-actions') if block_given?
      content += content_tag(:h1, title)
      
      content_tag(:div, content, :class => 'page-header')
    end
    
  end
end