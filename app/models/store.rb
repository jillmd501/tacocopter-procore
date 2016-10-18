class Store < ActiveRecord::Base
  has_and_belongs_to_many :tacos
  has_and_belongs_to_many :salsas
  belongs_to :city

  def list_all_tacos
  	self.tacos
  end

  def list_all_salsas

  end

end
