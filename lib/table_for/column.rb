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
      url = if @options[:link_to].respond_to?(:call)
        @options[:link_to].call(resource)
      elsif @options[:link_to].is_a?(Symbol)
        @builder.template.send(@options[:link_to], resource)
      else
        resource
      end
      
      @builder.template.link_to(string,  url, :method => @options[:method], :confirm => @options[:confirm], :remote => @options[:remote])
    end
  end
end