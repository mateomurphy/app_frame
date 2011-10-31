module AppFrame
  class Engine < Rails::Engine
    initializer "static assets" do |app|
      app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{config.root}/public"
    end
    
    initializer "rails includes" do |app|
      ActionController::Base.send :include, AppFrame::ControllerMethods
      ActionView::Base.send       :include, AppFrame::ViewMethods
      ActionView::Base.send       :include, AppFrame::MenuHelper
    end
    
    initializer "gem setup" do |app|
      ShowFor.separator = ""
      ShowFor.label_proc = lambda { |l| l.titleize + ": " }
    end
    
    initializer "resolver setup" do |app|
      ActionController::Base.append_view_path ActionView::FileSystemResolver.new("#{config.root}/app/views/#{AppFrame.theme}/actions", ":action{.:formats,}{.:handlers,}")
    end
    
  end
end