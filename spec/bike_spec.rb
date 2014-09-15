# Link to the Bike class

require 'bike' 

# We are describing the functionality of a specific class, Bike

describe Bike do

	it "should not be broken after we create it" do 
		the_bike = Bike.new # Initialize a new object of Bike class
		expect(the_bike).not_to be_broken
	end

	it "should able to be broken" do 
		the_bike = Bike.new
		the_bike.break!
		expect(the_bike).to be_broken
	end

end
	
