require_relative "adapter"
require_relative "window"

class Adapter

	def initialize
	end

	def show_window
		window = Gosu::Window.new(640, 400, false, 10.0)
		window.draw
		window.show
	end
end