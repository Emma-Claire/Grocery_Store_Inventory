require 'simplecov'
SimpleCov.start

require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative '../lib/product'
require_relative '../lib/sales'
require_relative '../lib/stores'
