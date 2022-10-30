# frozen_string_literal: true

require_relative "scale2/version"

# with block
module Scale2
  def self.find_scale(rasters)
    max = -1
    (-1..1).step(0.001) do |x|
      buf = yield x
      max = buf if buf > max
    end
    rasters / max
  end
end
