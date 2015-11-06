class Window < Gosu::Window

	WIDTH = 640
  HEIGHT = 400

	def initialize
    super WIDTH, HEIGHT
		self.caption = "BANK MURDER"

		@font = Gosu::Font.new(20)
	end

	def say(message)
		@font.draw(message, 10, 10, ZOrder::UI, 1.0, 1.0, 0xff_ffffff)
	end

	def draw 
		draw_rec(20,20,160,100,Gosu::Color.new(0xff_ffffff))
	end

	private

	def draw_rec(x,y,height,width,color)
		Gosu.draw_line(x, y, color, x + width, y, color, 1)
		Gosu.draw_line(x + width, y, color, x + width, y + length, color, 1)
		Gosu.draw_line(x + width, y + length, color, x, y + length, color, 1)
		Gosu.draw_line(x, y + length, color, x, y, color, 1)
	end

end