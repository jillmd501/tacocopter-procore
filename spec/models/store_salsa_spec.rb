require 'rails_helper'

RSpec.describe StoresSalsa do
  it "is valid with valid attributes" do
    store_salsa =  StoresSalsa.new(spiciness: "9")
    expect(store_salsa).to be_valid
  end

  it "is not valid without a spiciness" do
  	store_salsa = StoresSalsa.new(spiciness: "")
    expect(store_salsa).to_not be_valid
  end
end