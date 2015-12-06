class Enemy 

	attr_accessor :x, :y

	def initialize
		@image = Gosu::Image.new ("images/chicken.png")
		@width = @image.height
		@height = @image.width
		@x = 1
		@y = rand(GameWindow::HEIGHT)
		@z = 1
		@speed = rand(1..5)
	end
	

	def update
		@x += @speed
	end

	def draw
		@image.draw(@x, @y, @z)
		
	end

	def off_screen?
		@y > GameWindow::HEIGHT
	end

end