require './lib/bike' 

describe Bike do

	let(:the_bike) { Bike.new }

	it "should not be broken after we create it" do 
		expect(the_bike).not_to be_broken
	end

	it "should able to be broken" do 
		the_bike.break!
		expect(the_bike).to be_broken
	end

	it "should be fixable" do
		the_bike.break!
		the_bike.fix!
		expect(the_bike).not_to be_broken
	end

end
	
