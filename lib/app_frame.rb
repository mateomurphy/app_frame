require 'active_support/core_ext/object/returning' #required for will_paginate
require 'engine'
require 'haml'
require 'inherited_resources'
require 'simple_form'
require 'show_for'
require 'will_paginate'
require 'app_frame/controller_methods'
require 'app_frame/view_methods'

module AppFrame
  def self.theme
    'web_app_theme'
  end
end