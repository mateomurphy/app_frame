module TableFor
  class Column
    def initialize(builder, name, options = {}, &block)
      @builder, @name, @options, @block = builder, name, options, block
    end
    
    def label
      @name.to_s.humanize
    end
    
    def content(resource)
      if @block
        @block.call(resource)
      else
        nil
      end
    end
    
    def link_to(string, resource)
      @builder.template.link_to(string, @options[:link_to].respond_to?(:call) ? @options[:link_to].call(resource) : resource)
    end
  end
end