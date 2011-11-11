module AppFrame
  module BootstrapHelper
    def alert(message, type = nil)
      message = close_button + content_tag(:p, message)
      content_tag(:div, message, :class => "alert-message #{alert_type_map(type)} fade in")
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
    
  end
end