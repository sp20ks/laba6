# frozen_string_literal: true

require_relative "with_enum/version"

# module WithEnum
module WithEnum
  @ref_sum = 1.0 / 18

  @steps = 0

  def self.elem(count)
    1.0 / (count * (count + 1) * (count + 2) * (count + 3))
  end

  def self.range
    @steps = 0
    Enumerator.new { |el| loop { el << elem(@steps += 1) } }
  end

  def self.find_sum(accur)
    sum = 0
    range.take_while { |el| ((sum += el) - @ref_sum).abs > accur }
    [sum, @steps]
  end
end
