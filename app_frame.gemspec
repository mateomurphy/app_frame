# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{app_frame}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mateo Murphy"]
  s.date = %q{2011-11-21}
  s.description = %q{An app framework}
  s.email = %q{mateo.murphy@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/assets/javascripts/app_frame/application.js",
    "app/assets/stylesheets/app_frame/application.scss",
    "app/helpers/app_frame/bootstrap_helper.rb",
    "app/helpers/app_frame/menu_helper.rb",
    "app/models/settings.rb",
    "app/views/app_frame/actions/_form.html.haml",
    "app/views/app_frame/actions/_show.html.haml",
    "app/views/app_frame/actions/_table.html.haml",
    "app/views/app_frame/actions/edit.html.haml",
    "app/views/app_frame/actions/index.html.haml",
    "app/views/app_frame/actions/new.html.haml",
    "app/views/app_frame/actions/show.html.haml",
    "app/views/app_frame/layout/_flashes.html.haml",
    "app/views/app_frame/layout/_head.html.haml",
    "app/views/app_frame/layout/_top_menu.html.haml",
    "app/views/kaminari/app_frame/_first_page.html.haml",
    "app/views/kaminari/app_frame/_gap.html.haml",
    "app/views/kaminari/app_frame/_last_page.html.haml",
    "app/views/kaminari/app_frame/_next_page.html.haml",
    "app/views/kaminari/app_frame/_page.html.haml",
    "app/views/kaminari/app_frame/_paginator.html.haml",
    "app/views/kaminari/app_frame/_prev_page.html.haml",
    "app/views/layouts/app_frame/default.html.haml",
    "app/views/layouts/web_app_theme/default.html.haml",
    "app/views/web_app_theme/actions/_form.html.haml",
    "app/views/web_app_theme/actions/_list.html.haml",
    "app/views/web_app_theme/actions/_show.html.haml",
    "app/views/web_app_theme/actions/_sidebar.html.haml",
    "app/views/web_app_theme/actions/edit.html.haml",
    "app/views/web_app_theme/actions/index.html.haml",
    "app/views/web_app_theme/actions/new.html.haml",
    "app/views/web_app_theme/actions/show.html.haml",
    "app_frame.gemspec",
    "lib/app_frame.rb",
    "lib/app_frame/controller_methods.rb",
    "lib/app_frame/view_methods.rb",
    "lib/assets/images/web-app-theme/avatar.png",
    "lib/assets/images/web-app-theme/icons/application_edit.png",
    "lib/assets/images/web-app-theme/icons/cross.png",
    "lib/assets/images/web-app-theme/icons/key.png",
    "lib/assets/images/web-app-theme/icons/tick.png",
    "lib/assets/stylesheets/web-app-theme/base.css",
    "lib/assets/stylesheets/web-app-theme/override.css",
    "lib/assets/stylesheets/web-app-theme/themes/default/images/arrow.png",
    "lib/assets/stylesheets/web-app-theme/themes/default/images/boxbar-background.png",
    "lib/assets/stylesheets/web-app-theme/themes/default/images/button-background-active.png",
    "lib/assets/stylesheets/web-app-theme/themes/default/images/button-background.png",
    "lib/assets/stylesheets/web-app-theme/themes/default/images/menubar-background.png",
    "lib/assets/stylesheets/web-app-theme/themes/default/style.css",
    "lib/display_for.rb",
    "lib/display_for/builder.rb",
    "lib/display_for/builder/base.rb",
    "lib/display_for/builder/collection_base.rb",
    "lib/display_for/builder/resource_base.rb",
    "lib/display_for/builder/table.rb",
    "lib/display_for/builder/view.rb",
    "lib/display_for/element.rb",
    "lib/display_for/element/action.rb",
    "lib/display_for/element/attribute.rb",
    "lib/display_for/element/base.rb",
    "lib/display_for/helper.rb",
    "lib/engine.rb",
    "spec/app_frame_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/mateomurphy/app_frame}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.3}
  s.summary = %q{An app framework}
  s.test_files = [
    "spec/app_frame_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ckeditor-rails>, [">= 0"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<inherited_resources>, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0"])
      s.add_runtime_dependency(%q<settingslogic>, [">= 0"])
      s.add_runtime_dependency(%q<simple_form>, [">= 0"])
      s.add_runtime_dependency(%q<twitter-bootstrap-rails>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["~> 3.1.1"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<log_buddy>, [">= 0"])
    else
      s.add_dependency(%q<ckeditor-rails>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<inherited_resources>, [">= 0"])
      s.add_dependency(%q<kaminari>, [">= 0"])
      s.add_dependency(%q<settingslogic>, [">= 0"])
      s.add_dependency(%q<simple_form>, [">= 0"])
      s.add_dependency(%q<twitter-bootstrap-rails>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3.1.1"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<log_buddy>, [">= 0"])
    end
  else
    s.add_dependency(%q<ckeditor-rails>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<inherited_resources>, [">= 0"])
    s.add_dependency(%q<kaminari>, [">= 0"])
    s.add_dependency(%q<settingslogic>, [">= 0"])
    s.add_dependency(%q<simple_form>, [">= 0"])
    s.add_dependency(%q<twitter-bootstrap-rails>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3.1.1"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<log_buddy>, [">= 0"])
  end
end

