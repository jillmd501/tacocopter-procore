require 'pry'

class TacocopterController < ApplicationController
	# List out all possibilities of tacos and salsas as arrays
	def index
		@tacos = Taco.all
		@salsas = Salsa.all
		#binding.pry
	end

	# List only restaurants with params selected by user
	def show

	end
end