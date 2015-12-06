require 'gosu'
require_relative 'racer'
require_relative 'enemy'
require_relative 'background'

class GameWindow < Gosu::Window 
	WIDTH = 640
	HEIGHT = 480
	def initialize
		super WIDTH, HEIGHT
		self.caption = "High Stakes"

		#@background = Gosu::Image.new("images/road.png", :tileable => true)
		
		@racer = Racer.new
		@enemies = []
		@background = Background.new		
		@crash = Gosu::Sample.new("sounds/crash.wav")
		@game_over = false
	end

	def update
		if !@game_over
			@racer.update
			@background.update
			if rand(1000) < 3
				@enemies << Enemy.new
			end
	

			@enemies.each do |enemy|
				enemy.update

				if Gosu::distance(@racer.x, @racer.y, enemy.x, enemy.y)<35
					@crash.play
					@game_over = true
				end

				if enemy.off_screen?
					@enemies.delete(enemy)
				end

			end
		end
	end

	def draw

		@background.draw
		@racer.draw
		@enemies.each do |enemy|
			enemy.draw
		end
	end
end


window = GameWindow.new
window.show