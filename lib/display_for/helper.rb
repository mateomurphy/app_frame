module DisplayFor
  module Helper
    def table_for(resource_class, collection, html_options={}, &block)
      Builder::Table.new(resource_class, collection, self, &block).to_s
    end
  end
end

ActionView::Base.send :include, DisplayFor::Helper