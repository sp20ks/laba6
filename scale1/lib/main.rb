# frozen_string_literal: true

require_relative "scale1"

# module Main
module Main
  include Scale
  include Math

  def self.call
    func1 = ->(x) { x * Math.sin(x) }
    func2 = ->(x) { Math.tan(x) }

    puts "Input rasters for finding scale: "
    rasters = gets.to_i

    puts "Scale for f(x) = x * sin(x): #{Scale.find_scale(rasters, func1)}"
    puts "Scale for f(x) = tg(x): #{Scale.find_scale(rasters, func2)}"
  end
end

Main.call
