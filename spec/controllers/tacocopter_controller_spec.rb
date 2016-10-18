require 'test_helper'

class TacocopterControllerTest < ActionController::TestCase
	describe "#tacos" 
	    it "returns all tacos" do
	        expect(@tacos.cont).should eql(18)
	    end

	describe "#salsas" do
	    it "returns all salsas" do
	        expect(@tacos.count).should eql(9)
	    end
	end
end
