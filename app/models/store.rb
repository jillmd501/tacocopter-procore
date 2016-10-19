require 'pry'

class Store < ActiveRecord::Base
  belongs_to :city
  has_and_belongs_to_many :tacos
  # has_and_belongs_to_many :salsas

  validates :name, presence: true
  validates :zagat_rating, presence: true

  def self.find_stores_with_selected_tacos(ids)
  	count = ids.count
  	joins(:tacos).where(tacos: {id: ids}).group('id').having('COUNT(*) >= ?', count)
  end
  
  # def self.find_stores_with_selected_salsas(ids)
  #   count = ids.count
  #   joins(:salsas_stores).where(salsas: {id: ids}).group('id').having('COUNT(*) >= ?', count)
  #   binding.pry
  # end

  # def self.find_stores_with_selected_salsas(salsas)
  #   if salsas.include?('salsas')
  #     includes(:salsas).all
  #   else
  #     includes(:salsas).where(salsas: { name: salsas })
  #   end
  # end

end
