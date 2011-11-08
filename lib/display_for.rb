require 'display_for/helper'
require 'display_for/builder/base'
require 'display_for/builder/collection_base'
require 'display_for/builder/resource_base'
require 'display_for/builder/table'
require 'display_for/builder/view'

module DisplayFor
  autoload :Action,    'display_for/action'
  autoload :Attribute, 'display_for/attribute'
  autoload :Element,   'display_for/element'
end