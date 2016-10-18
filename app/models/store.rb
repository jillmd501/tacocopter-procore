class Store < ActiveRecord::Base
  has_and_belongs_to_many :tacos
  has_and_belongs_to_many :salsas
  belongs_to :city


  # Active Record queries for tacos that follow specific params
  def list_all_relative_tacos
  	self.tacos
  end

  def list_all_relative_salsas
  	self.salsas
  end

  # miiiight need this?
  def final_tacos_and_salsas

  end

end
