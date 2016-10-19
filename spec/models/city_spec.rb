require 'rails_helper'

RSpec.describe City do
  it "is valid with valid attributes" do
    city =  City.new(name: "Carpinteria", allows_drones: true)
    expect(city).to be_valid
  end

  it "is not valid without a name" do
  	city = City.new(name: "", allows_drones: true)
    expect(city).to_not be_valid
  end
end