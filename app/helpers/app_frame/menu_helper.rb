module AppFrame
  module MenuHelper
    def menu_link(key, path = '#', options = {}, &block)
      active = false
      highlight = options.delete(:highlights_on) || /#{path}/
      dropdown = options.delete(:dropdown)

      Array(highlight).each do |regex|
        active = true if request.path =~ regex
      end
    
      options[:class] ||= ""
      options[:class] << ' active' if active
      options[:class] << ' dropdown' if dropdown
      options[:class] = options[:class].present? ? options[:class].strip : nil
    
      key = t(:"menu.#{key}") if key.is_a?(Symbol)
    
      a_class = dropdown ? 'dropdown-toggle' : nil
      ul_class = dropdown ? 'dropdown-menu' : nil
    
      content = link_to(key, path, :class => a_class)
      content += content_tag(:ul, capture(&block), :class => ul_class) if block_given?
    
      content_tag :li, content, options
    end 
  
    def content_locale_switch(obj = nil)
      return unless obj.respond_to?(:translated_locales)
      
      current_locale = (params[:content_locale] || I18n.default_locale).to_sym
      
      locales = I18n.available_locales.map do |s|
        text = s.to_s.upcase
        text << "*" if obj && !obj.translated_locales.include?(s)
        content_tag :li, link_to(text, url_for(:content_locale => s)), :class => current_locale == s ? 'active' : nil
      end
      
      content_tag :ul, locales.join("").html_safe, :class => 'nav nav-pills'
    end
    
  end
end