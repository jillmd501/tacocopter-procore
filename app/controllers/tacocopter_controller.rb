require 'pry'

class TacocopterController < ApplicationController
	  def index
    @tacos = Taco.all
    @salsas = Salsa.all
  end

  def search
	if params[:salsas].nil? && params[:tacos].nil?
	  # redirect_to index_path
	end
	  @stores_with_tacos = Store.find_stores_with_selected_tacos(params[:tacos])
	  @stores_with_salsas= Store.find_stores_with_selected_salsas(params[:salsas])
	  @final_stores = @stores_with_tacos
  end
end