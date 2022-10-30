# frozen_string_literal: true

require "test_helper"
require "/home/ksusha/uni/labs_web/laba6/wo_enum/lib/wo_enum"

# class for testing
class TestWoEnum < Minitest::Test
  def test_first
    assert_in_delta 1.0 / 18, WoEnum.find_sum(0.01)[0], 0.01
  end

  def test_second
    assert_in_delta 1.0 / 18, WoEnum.find_sum(0.001)[0], 0.001
  end
end
