require 'pry'

class Store < ActiveRecord::Base
  has_and_belongs_to_many :tacos
  has_and_belongs_to_many :salsas
  belongs_to :city

# validations go here

  # Active Record queries for tacos that follow specific params

  def self.find_stores_with_selected_tacos(ids)
  	binding.pry
  	joins(:tacos).where(ids[:id])
  end

  def list_all_relative_salsas(ids)
  	joins(:salsas).where(ids[:id])
  end

end
