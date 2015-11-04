require_relative "adapter"

class GuiAdapter < Adapter

	attr_accessor :color
	attr_reader :color

	def initialize
	end

	def show_window
		window = Gosu::Window.new(640, 400, false, 10.0)
		draw_atm
		window.show
	end

	def draw_atm
		draw_rec(20,20,160,100,Gosu::Color.new(0xff_ff0000))
	end

	def draw_rec(x,y,height,width,color)
		Gosu.draw_line(x, y, color, x + width, y, color, 1)
		Gosu.draw_line(x + width, y, color, x + width, y + length, color, 1)
		Gosu.draw_line(x + width, y + length, color, x, y + length, color, 1)
		Gosu.draw_line(x, y + length, color, x, y, color, 1)
	end
end