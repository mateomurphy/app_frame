require 'active_support/core_ext/object/returning' #required for will_paginate
require 'engine'
require 'haml'
require 'inherited_resources'
require 'simple_form'
require 'show_for'
require 'will_paginate'
require 'table_for'

module AppFrame
  autoload :ControllerMethods, 'app_frame/controller_methods'
  autoload :ViewMethods, 'app_frame/view_methods'
  autoload :FallbackResolver, 'app_frame/fallback_resolver'

  mattr_accessor :app_name
  @@app_name = "AppFrame"
  
  def self.theme
    'web_app_theme'
  end
end