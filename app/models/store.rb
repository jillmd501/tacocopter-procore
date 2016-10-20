require 'pry'

class Store < ActiveRecord::Base
  belongs_to :city
  
  has_many :stores_salsas
  has_many :salsas, through: :stores_salsas

  has_and_belongs_to_many :tacos
  
  validates :name, presence: true
  validates :zagat_rating, presence: true

  def self.find_stores_with_selected_tacos(ids)
  	count = ids.count
  	joins(:tacos).where(tacos: {id: ids}).group('id').having('COUNT(*) >= ?', count)
  end
  
  def self.find_stores_with_selected_salsas(ids)
    # binding.pry
    count = ids.count
    joins(:salsas).where(salsas: {id: ids}).group('id').having('COUNT(*) >= ?', count)
  end
end
