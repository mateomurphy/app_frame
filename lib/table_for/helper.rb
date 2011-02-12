module TableFor
  module Helper
    def table_for(resource_class, collection, html_options={}, &block)
      Builder.new(resource_class, collection, self, &block).to_s
    end
  end
end

ActionView::Base.send :include, TableFor::Helper