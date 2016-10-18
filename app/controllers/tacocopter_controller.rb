require 'pry'

class TacocopterController < ApplicationController
	def index
		@tacos = Taco.all
		binding.pry
	end

	def show

	end
end