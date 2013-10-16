gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/test_suite'

class TestSuiteTest < Minitest::Test
  def test_suite_with_each
    suite = TestSuite.new(:map, :each, [])
    assert_equal "MapPatternTest", suite.name
    assert_equal "map_pattern_test.rb", suite.filename
    assert_equal "./lib/templates/map/each.erb", suite.template_name
  end

  def test_suite_with_enum
    suite = TestSuite.new(:map, :enum, [])
    assert_equal "MapTest", suite.name
    assert_equal "map_test.rb", suite.filename
    assert_equal "./lib/templates/map/enum.erb", suite.template_name
  end
end

