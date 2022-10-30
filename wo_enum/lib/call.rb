# frozen_string_literal: true

require_relative "wo_enum"

# module Main
module Main
  include WoEnum

  @accur = [0.01, 0.001]

  def self.call
    @accur.each { |el| p "Sum with accuracy #{el} #{(a = WoEnum.find_sum(el))[0]}. Number of steps is #{a[1]}" }
  end
end

Main.call
