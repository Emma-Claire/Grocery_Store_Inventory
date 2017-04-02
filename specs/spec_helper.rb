require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'

require 'simplecov'
SimpleCov.start

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative '../lib/product'
require_relative '../lib/costumer_order'
require_relative '../lib/grocerystore'
require_relative '../lib/aisle'
require_relative '../lib/main'
require 'csv'
