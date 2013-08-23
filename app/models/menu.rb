class MenuItem
  attr_reader :name, :path, :namespace

  def initialize(namespace, path)
    @namespace = namespace
    @path = path
    @name = path.humanize
  end

  def url
    "/#{namespace}/#{path}"
  end
end


class Menu
  attr_reader :namespace

  def initialize(namespace)
    @namespace = namespace
  end

  def routes
    @routes ||= Rails.application.routes.routes
  end

  def menu_routes
    @menu_routes ||= routes.select { |r| r.defaults[:action] == 'index' }
  end

  def specs
    @specs ||= menu_routes.map { |r| r.path.spec }.uniq
  end

  def menu_items
    @menu_items = []
    specs.each do |s| 
      matches = /\/#{@namespace}\/(\w*)/.match(s.to_s) 
      @menu_items << matches[1] if matches
    end
    @menu_items.uniq.map { |i| MenuItem.new(@namespace, i) }
  end

end