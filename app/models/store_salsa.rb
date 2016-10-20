class StoreSalsa < ActiveRecord::Base
  belongs_to :store  
  belongs_to :salsa

  validates :spiciness, presence: true
end
