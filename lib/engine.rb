module AppFrame
  class Engine < Rails::Engine
    initializer "static assets" do |app|
      app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{config.root}/public"
    end
  end
end