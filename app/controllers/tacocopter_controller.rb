class TacocopterController < ApplicationController

	def index
		@salsas = Salsas.all
		@tacos= Tacos.all 
	end

end