require_relative 'equalizer'

class Point
	attr_accessor :x, :y

	include ValueObject::Equalizer.new(:x, :y)

	def initialize(x, y)
		@x, @y = x, y
	end

end