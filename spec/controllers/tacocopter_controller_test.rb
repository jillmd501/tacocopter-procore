require 'test_helper'

class TacocopterControllerTest < ActionController::TestCase
	describe "#tacos" do
	    it "returns all tacos" do
	        @tacos.all.should eql(18)
	    end
	end

	describe "#salsas" do
	    it "returns all salsas" do
	        @tacos.all.should eql(9)
	    end
	end
end
