$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'test/unit'

require 'tu-context/core_ext/string'
require 'tu-context/core_ext/rails_hacks'

require 'tu-context/version'
require 'tu-context/suite'
require 'tu-context/test'
require 'tu-context/lifecycle'
require 'tu-context/context'
require 'tu-context/shared_behavior'

class Test::Unit::TestCase
  extend Context::Context
end
