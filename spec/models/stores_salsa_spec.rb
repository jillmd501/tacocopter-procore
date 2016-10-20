require 'rails_helper'

RSpec.describe StoresSalsa do
  it "is valid with valid attributes" do
    stores_salsa =  StoresSalsa.new(price: 1.9)
    expect(stores_salsa).to be_valid
  end

  it "is not valid without a spiciness" do
  	stores_salsa = StoresSalsa.new(price: "")
    expect(stores_salsa).to_not be_valid
  end
end