# frozen_string_literal: true

require "test_helper"

# class for testing module Scale2 with block
class TestScale2 < Minitest::Test
  def test_first
    assert_in_delta 11.883, Scale2.find_scale(10) { |x| x * Math.sin(x) }, 0.001
  end

  def test_second
    assert_in_delta 6.420, Scale2.find_scale(10) { |x| Math.tan(x) }, 0.001
  end
end
