# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "app_frame"
  s.version = "0.5.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mateo Murphy"]
  s.date = "2013-08-23"
  s.description = "An app framework"
  s.email = "mateo.murphy@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/assets/javascripts/app_frame/application.js",
    "app/assets/stylesheets/app_frame/_devise.scss",
    "app/assets/stylesheets/app_frame/_tree.scss",
    "app/assets/stylesheets/app_frame/application.scss",
    "app/controllers/app_frame/devise/confirmations_controller.rb",
    "app/controllers/app_frame/devise/passwords_controller.rb",
    "app/controllers/app_frame/devise/registrations_controller.rb",
    "app/controllers/app_frame/devise/sessions_controller.rb",
    "app/helpers/app_frame/bootstrap_helper.rb",
    "app/helpers/app_frame/breadcrumb_helper.rb",
    "app/helpers/app_frame/menu_helper.rb",
    "app/helpers/app_frame/pagination_helper.rb",
    "app/helpers/app_frame/resources_helper.rb",
    "app/helpers/app_frame/scopes_helper.rb",
    "app/helpers/app_frame/select_helper.rb",
    "app/helpers/app_frame/tree_nav_helper.rb",
    "app/models/menu.rb",
    "app/models/settings.rb",
    "app/views/app_frame/devise/confirmations/new.html.haml",
    "app/views/app_frame/devise/passwords/edit.html.haml",
    "app/views/app_frame/devise/passwords/new.html.haml",
    "app/views/app_frame/devise/registrations/edit.html.haml",
    "app/views/app_frame/devise/registrations/new.html.haml",
    "app/views/app_frame/devise/sessions/new.html.haml",
    "app/views/app_frame/devise/shared/_links.html.haml",
    "app/views/app_frame/devise/unlocks/new.html.haml",
    "app/views/application/_brand.html.haml",
    "app/views/application/_breadcrumb.html.haml",
    "app/views/application/_flashes.html.haml",
    "app/views/application/_form.html.haml",
    "app/views/application/_head.html.haml",
    "app/views/application/_secondary_menu.html.haml",
    "app/views/application/_show.html.haml",
    "app/views/application/_sidebar.html.haml",
    "app/views/application/_sub_menu.html.haml",
    "app/views/application/_table.html.haml",
    "app/views/application/_toolbar.html.haml",
    "app/views/application/_top_menu.html.haml",
    "app/views/application/edit.html.haml",
    "app/views/application/index.html.haml",
    "app/views/application/new.html.haml",
    "app/views/application/show.html.haml",
    "app/views/kaminari/app_frame/_first_page.html.haml",
    "app/views/kaminari/app_frame/_gap.html.haml",
    "app/views/kaminari/app_frame/_last_page.html.haml",
    "app/views/kaminari/app_frame/_next_page.html.haml",
    "app/views/kaminari/app_frame/_page.html.haml",
    "app/views/kaminari/app_frame/_paginator.html.haml",
    "app/views/kaminari/app_frame/_prev_page.html.haml",
    "app/views/layouts/app_frame/default.html.haml",
    "app/views/layouts/app_frame/devise.html.haml",
    "app_frame.gemspec",
    "lib/app_frame.rb",
    "lib/app_frame/controller_methods.rb",
    "lib/app_frame/view_methods.rb",
    "lib/assets/images/.gitkeep",
    "lib/assets/javascripts/anytime.js",
    "lib/assets/stylesheets/anytime.css",
    "lib/engine.rb",
    "spec/app_frame_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/mateomurphy/app_frame"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "An app framework"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bootstrap-sass>, ["~> 2.3.1.0"])
      s.add_runtime_dependency(%q<devise>, [">= 0"])
      s.add_runtime_dependency(%q<display_for>, ["= 0.1.12"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0"])
      s.add_runtime_dependency(%q<inherited_resources>, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0"])
      s.add_runtime_dependency(%q<nested_form>, [">= 0"])
      s.add_runtime_dependency(%q<nested_set>, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 0"])
      s.add_runtime_dependency(%q<settingslogic>, [">= 0"])
      s.add_runtime_dependency(%q<simple_form>, [">= 0"])
      s.add_runtime_dependency(%q<select2-rails>, [">= 0"])
      s.add_runtime_dependency(%q<squeel>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["~> 3.2.13"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3.4"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<log_buddy>, [">= 0"])
    else
      s.add_dependency(%q<bootstrap-sass>, ["~> 2.3.1.0"])
      s.add_dependency(%q<devise>, [">= 0"])
      s.add_dependency(%q<display_for>, ["= 0.1.12"])
      s.add_dependency(%q<haml-rails>, [">= 0"])
      s.add_dependency(%q<inherited_resources>, [">= 0"])
      s.add_dependency(%q<kaminari>, [">= 0"])
      s.add_dependency(%q<nested_form>, [">= 0"])
      s.add_dependency(%q<nested_set>, [">= 0"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<settingslogic>, [">= 0"])
      s.add_dependency(%q<simple_form>, [">= 0"])
      s.add_dependency(%q<select2-rails>, [">= 0"])
      s.add_dependency(%q<squeel>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3.2.13"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.3.4"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<log_buddy>, [">= 0"])
    end
  else
    s.add_dependency(%q<bootstrap-sass>, ["~> 2.3.1.0"])
    s.add_dependency(%q<devise>, [">= 0"])
    s.add_dependency(%q<display_for>, ["= 0.1.12"])
    s.add_dependency(%q<haml-rails>, [">= 0"])
    s.add_dependency(%q<inherited_resources>, [">= 0"])
    s.add_dependency(%q<kaminari>, [">= 0"])
    s.add_dependency(%q<nested_form>, [">= 0"])
    s.add_dependency(%q<nested_set>, [">= 0"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<settingslogic>, [">= 0"])
    s.add_dependency(%q<simple_form>, [">= 0"])
    s.add_dependency(%q<select2-rails>, [">= 0"])
    s.add_dependency(%q<squeel>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3.2.13"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.3.4"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<log_buddy>, [">= 0"])
  end
end

