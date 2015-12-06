class Background 

	attr_accessor :x, :y

	def initialize
		@image = Gosu::Image.new ("images/road.png")
		@height = @image.height
		@width = @image.width
		@x = 0
		@y = -9520
		@z = 0
		@speed = 10

	end

	def update

		@y += @speed

	end

	def draw
		@image.draw(@x, @y, @z)
	end

end