require './lib/bike' 
require './spec/spec_helper.rb'

describe Bike do

	let(:bike) { Bike.new }

	it "should not be broken after we create it" do 
		expect(bike).not_to be_broken
	end

	it "should able to be broken" do 
		bike.break!
		expect(bike).to be_broken
	end

	it "should be fixable" do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end

end
	
