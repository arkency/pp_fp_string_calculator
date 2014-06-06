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

  def test_add_two_numbers
    assert_equal 5, @calculator.add("2,3")
  end

  def test_newline_as_separator
    assert_equal 6, @calculator.add("1\n2,3")
  end

  def test_custom_delimiter
    assert_equal 42, @calculator.add("//.\n40.2")
  end
end
