class TacocopterController < ApplicationController
  def index
    @tacos = Taco.all
    @salsas = Salsa.all
  end

  def search
	@stores_with_tacos = Store.find_stores_with_selected_tacos(params[:tacos])
	@stores_with_salsas= Store.find_stores_with_selected_salsas(params[:salsas])
	
	if @stores_with_salsas && @stores_with_tacos 
	  @final_stores = @stores_with_tacos & @stores_with_salsas
	elsif @stores_with_salsas.empty? 
      @final_stores = @stores_with_tacos
    else
    	@final_stores = @stores_with_salsas
	end
  end

  def attributes_selected
  	params[:salsas].nil? && params[:tacos].nil?
	flash[:notice]= "Pick tacos or salsas!"
  end
end