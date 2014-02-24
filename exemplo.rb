require 'rubygems'
require 'gosu'

class Exemplo < Gosu::Window
	def initialize
	   	super(640, 480, false)
	    self.caption = "Exemplo - Gosu"
	    @imagem_fundo = Gosu::Image.new(self,"bg.png",true)
	    @jogador = Gosu::Image.new(self,"barco_01.png",true)
	    @pos_x=0
	    @pos_y=400
	    @x_bg = 0
	   
	end
	
	def draw
	 	@imagem_fundo.draw(@x_bg,0,0)
	 	@jogador.draw(@pos_x,@pos_y,1)

	end
 
  	def update
  		if(button_down?(Gosu::Button::KbRight))then
  			@pos_x = @pos_x + 5
  			if(@pos_x > 360)then @pos_x = 400 end
  			
  		end 

  		if(button_down?(Gosu::Button::KbLeft))then 
  			@pos_x = @pos_x - 5
  			if(@pos_x < 10) then @pos_x = 10 end 
  			
  		end


  		if(button_down?(Gosu::Button::KbRight))then
  			@x_bg = @x_bg - 5
  			if(@pos_x > 1433)then @pos_x = 1433 end
  		end 

  		if(button_down?(Gosu::Button::KbLeft))then
  			@x_bg = @x_bg + 5
  			if(@pos_x < 10) then @pos_x = 10 end 
  		end 



	end
end
 
Exemplo.new.show