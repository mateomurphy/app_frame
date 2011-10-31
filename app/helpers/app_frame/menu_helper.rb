module AppFrame
  module MenuHelper
    def menu_link(key, path, options = {})
      if options[:highlights_on]
        options[:class] = 'select' if request.path =~ options.delete(:highlights_on)
      else
        options[:class] = 'select' if request.path =~ /#{path}/
      end
    
      content_tag :li, link_to(key, path), options
    end  
  end
end