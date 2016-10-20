class StoresTaco < ActiveRecord::Base
  belongs_to :store  
  belongs_to :taco

  validates :price, presence: true
end
