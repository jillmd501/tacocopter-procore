require 'rails_helper'

RSpec.describe StoreSalsa do
  it "is valid with valid attributes" do
    store_salsa =  StoreSalsa.new(spiciness: "9")
    expect(salsa).to be_valid
  end

  it "is not valid without a spiciness" do
  	store_salsa = StoreSalsa.new(spiciness: "")
    expect(salsa).to_not be_valid
  end
end