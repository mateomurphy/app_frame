require 'rails'
require 'action_controller'
require 'engine'
require 'haml'
require 'inherited_resources'
require 'kaminari'
require 'simple_form'
require 'display_for'
require 'settingslogic'
require 'twitter-bootstrap-rails'

module AppFrame
  autoload :ControllerMethods,  'app_frame/controller_methods'
  autoload :ViewMethods,        'app_frame/view_methods'

  mattr_accessor :app_name
  @@app_name = "AppFrame"
  
  def self.theme
    'app_frame'
  end
end