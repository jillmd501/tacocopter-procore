require 'rails_helper'

RSpec.describe Store do
  it "is valid with valid attributes" do
    store =  Store.new(name: "Jill's Taco Barn", sells_beer: true, zagat_rating: 100)
    expect(store).to be_valid
  end

  it "is not valid without a name" do
  	store = Store.new(name: "", sells_beer: true, zagat_rating: 100)
    expect(store).to_not be_valid
  end

  it "is not valid without a zagat rating" do
  	store = Store.new(name: "Jill's Taco Barn", sells_beer: true, zagat_rating: "")
    expect(store).to_not be_valid
  end
end