require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'

include Clockwork

every(2.seconds, 'Create New Smoke Day') { User.all.each { |user|
  user.smokes.create
} }
