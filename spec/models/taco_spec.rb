require 'rails_helper'

RSpec.describe Taco do
  it "is valid with valid attributes" do
    taco =  Taco.new(name: "Carne Asada", vegetarian: false)
    expect(taco).to be_valid
  end

  it "is not valid without a name" do
  	taco = Taco.new(name: "", vegetarian: false)
    expect(taco).to_not be_valid
  end
end