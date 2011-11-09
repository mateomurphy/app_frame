module AppFrame
  module MenuHelper
    def menu_link(key, path, options = {}, &block)
      if options[:highlights_on]
        active = request.path =~ options.delete(:highlights_on)
      else
        active = request.path =~ /#{path}/
      end
    
      if active
        if options[:class]
          options[:class] << ' active'
        else
          options[:class] = 'active'
        end
      end
    
      key = t(:"menu.#{key}") if key.is_a?(Symbol)
    
      content = link_to(key, path)
    
      content += content_tag(:ul, capture(&block)) if block_given?
    
      content_tag :li, content, options
    end  
  end
end