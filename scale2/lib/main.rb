# frozen_string_literal: true

require_relative "scale2"

# module Main
module Main
  include Scale2
  include Math

  def self.call
    puts "Input rasters for finding scale: "
    rasters = gets.to_i

    puts "Scale for f(x) = x * sin(x): #{Scale2.find_scale(rasters) { |x| x * Math.sin(x) }}"
    puts "Scale for f(x) = tg(x): #{Scale2.find_scale(rasters) { |x| Math.tan(x) }}"
  end
end

Main.call
