# frozen_string_literal: true

require_relative "scale1/version"

# call with lambda exp
module Scale
  def self.find_scale(rasters, func)
    max = -1
    (-1..1).step(0.001) do |x|
      buf = func.call(x)
      max = buf if buf > max
    end
    rasters / max
  end
end
