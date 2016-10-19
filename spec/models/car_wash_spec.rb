require 'rails_helper'

RSpec.describe CarWash do
  it "is valid with valid attributes" do
    car_wash =  CarWash.new(full_detail: true, hot_wax: true)
    expect(car_wash).to be_valid
  end
end