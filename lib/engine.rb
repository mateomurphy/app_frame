module AppFrame
  class Engine < Rails::Engine
    initializer "static assets" do |app|
      app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{config.root}/public"
    end
    
    initializer "rails includes" do |app|
      ActionController::Base.send(:include, AppFrame::ControllerMethods)
    end
    
  end
end