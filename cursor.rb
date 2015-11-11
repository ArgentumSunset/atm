class Cursor

	attr_accessor :image

	def initialize(window)
		@image = Gosu::Image.new("imgs/cursor.png")
		@window = window
	end

	def draw
		@image.draw(@window.mouse_x ,@window.mouse_y, 2)
	end
end