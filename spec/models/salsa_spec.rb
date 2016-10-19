require 'rails_helper'

RSpec.describe Salsa do
  it "is valid with valid attributes" do
    salsa =  Salsa.new(name: "Burn Yer Tongue Hot")
    expect(salsa).to be_valid
  end

  it "is not valid without a name" do
  	salsa = Salsa.new(name: "")
    expect(salsa).to_not be_valid
  end
end