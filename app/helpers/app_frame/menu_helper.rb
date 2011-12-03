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
  end
end