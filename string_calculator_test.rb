require 'test/unit'
require './string_calculator'

class StringCalculatorTest < Test::Unit::TestCase

  def test_add_on_empty_string
    calculator = StringCalculator.new
    assert_equal 0, calculator.add("")
  end

end
