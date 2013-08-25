module AppFrame
  module BootstrapHelper
    def alert(message, type = nil)
      message = close_button + message
      content_tag(:div, message, :class => "alert alert-#{alert_type_map(type)}")
    end
    
    def close_button
      content_tag(:a, "&times;".html_safe, :class => 'close', :data => { :dismiss => "alert" })
    end
    
    def alert_type_map(type)
      map = {
        :alert => 'error',
        :notice => 'success'
      }
      
      map[type.to_sym] || type
    end
    
    def icon(key, options = {})
      css_class = "icon-#{key}"
      css_class += " icon-white" if options[:invert]
      content_tag(:i, '', :class => css_class).html_safe
    end
    
    def page_header(title, &block)
      content = "".html_safe
      content += content_tag(:div, capture(&block), :class => 'page-actions') if block_given?
      content += content_tag(:h1, title)
      content
    end
    
  end
end