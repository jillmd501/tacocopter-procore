require 'rails_helper'

RSpec.describe StoresSalsa do
  it "is valid with valid attributes" do
    stores_taco =  StoresSalsa.new(spiciness: "9")
    expect(stores_taco).to be_valid
  end

  it "is not valid without a spiciness" do
  	stores_taco = StoresSalsa.new(spiciness: "")
    expect(stores_taco).to_not be_valid
  end
end