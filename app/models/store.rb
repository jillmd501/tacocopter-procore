require 'pry'

class Store < ActiveRecord::Base
  belongs_to :city
  
  has_many :stores_salsas
  has_many :salsas, through: :stores_salsas

  has_many :stores_tacos 
  has_many :tacos, through: :stores_tacos

  validates :name, presence: true
  validates :zagat_rating, presence: true

  def self.find_stores_with_selected_tacos(ids)
  	count = ids.count
  	joins(:tacos).where(tacos: {id: ids}).group('id').having('COUNT(*) >= ?', count)
  end
  
  def self.find_stores_with_selected_salsas(ids)
    count = ids.count
    joins(:salsas).where(salsas: {id: ids}).group('id').having('COUNT(*) >= ?', count)
  end
end
