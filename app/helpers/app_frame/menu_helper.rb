module AppFrame
  module MenuHelper
    def menu_link(key, path, options = {}, &block)
      if options[:highlights_on]
        options[:class] = 'active' if request.path =~ options.delete(:highlights_on)
      else
        options[:class] = 'active' if request.path =~ /#{path}/
      end
    
      key = t(:"menu.#{key}") if key.is_a?(Symbol)
    
      content = link_to(key, path)
    
      content += content_tag(:ul, capture(&block)) if block_given?
    
      content_tag :li, content, options
    end  
  end
end