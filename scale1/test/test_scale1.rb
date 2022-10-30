# frozen_string_literal: true

require "test_helper"

# class for testing module Scale where lambda
class TestScale1 < Minitest::Test
  def test_first
    assert_in_delta 11.883, Scale.find_scale(10, ->(x) { x * Math.sin(x) }), 0.001
  end

  def test_second
    assert_in_delta 6.420, Scale.find_scale(10, ->(x) { Math.tan(x) }), 0.001
  end
end
