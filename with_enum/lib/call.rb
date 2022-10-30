# frozen_string_literal: true

require_relative "with_enum"

# module Main
module Main
  include WithEnum

  @accur = [0.01, 0.001]

  def self.call
    @accur.each { |el| puts "Sum with accuracy #{el} #{(a = WithEnum.find_sum(el))[0]}. Number of steps is #{a[1]}" }
  end
end

Main.call
