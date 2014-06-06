require 'test/unit'
require './string_calculator'

class StringCalculatorTest < Test::Unit::TestCase
  def setup
    @calculator = StringCalculator.new
  end

  def test_add_on_empty_string
    assert_equal 0, @calculator.add("")
  end

  def test_add_single_number
    assert_equal 7, @calculator.add("7")
  end
end
