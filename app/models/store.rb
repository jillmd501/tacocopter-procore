require 'pry'

class Store < ActiveRecord::Base
  has_and_belongs_to_many :tacos
  has_and_belongs_to_many :salsas
  belongs_to :city

# validations go here

  # Active Record queries for tacos that follow specific params

  def self.find_stores_with_selected_tacos(ids)
  	count = ids.count
  	joins(:tacos).where(tacos: {id: ids}).group('id').having('COUNT(*) >= ?', count)
  end
  
  # def self.find_stores_with_selected_salsas(ids)
  # 	binding.pry
  # 	count = ids.count
  # 	joins(:salsas).where(salsas: {id: ids}).group('id').having('COUNT(*) >= ?', count)
  # end

end
