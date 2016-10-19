require 'pry'

class TacocopterController < ApplicationController
	
# List out all possibilities of tacos and salsas as separate arrays
  def index
    @tacos = Taco.all
    @salsas = Salsa.all
  end

# List only restaurants with params selected by user	
  def search
	  params[:salsas].nil? && params[:tacos].nil?
	  flash[:notice] = "Please select tacos or salsas!"
	if
	  @stores_with_tacos = Store.find_stores_with_selected_tacos(params[:tacos])
	  @stores_with_salsas= Store.find_stores_with_selected_salsas(params[:salsas])
	  @final_stores = @stores_with_tacos + @stores_with_salsas
    end
  end

end