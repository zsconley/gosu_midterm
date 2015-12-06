class Racer 

	attr_accessor :x, :y

	def initialize
		@image = Gosu::Image.new ("images/racer.png")
		@height = @image.height
		@width = @image.width
		@x = GameWindow::WIDTH/2 - @width/2
		@y = GameWindow::HEIGHT - @height
		@z = 1
		@speed = 5

	end

	def update
		if Gosu::button_down?(Gosu::KbLeft)
			#move left
			@x -= @speed
		elsif Gosu::button_down?(Gosu::KbRight)
			#move right
			@x += @speed
		elsif Gosu::button_down?(Gosu::KbUp)
			#move up
			@y -= @speed
		elsif Gosu::button_down?(Gosu::KbDown)
			#move down
			@y += @speed
		end
				

	end

	def draw
		@image.draw(@x, @y, @z)
	end

end