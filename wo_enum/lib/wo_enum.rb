# frozen_string_literal: true

require_relative "wo_enum/version"

# module WoEnum
module WoEnum
  include Math

  @ref_sum = 1.0 / 18

  def self.elem(count)
    1.0 / (count * (count + 1) * (count + 2) * (count + 3))
  end

  def self.find_sum(accur)
    steps = 0
    sum = 0
    loop do
      sum += WoEnum.elem(steps += 1)
      break if (sum - @ref_sum).abs < accur
    end
    [sum, steps]
  end
end
