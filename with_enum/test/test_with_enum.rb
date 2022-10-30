# frozen_string_literal: true

require "test_helper"
require "/home/ksusha/uni/labs_web/laba6/with_enum/lib/with_enum"

# class for testing
class TestWithEnum < Minitest::Test
  def test_first
    assert_in_delta 1.0 / 18, WithEnum.find_sum(0.01)[0], 0.01
  end

  def test_second
    assert_in_delta 1.0 / 18, WithEnum.find_sum(0.001)[0], 0.001
  end
end
