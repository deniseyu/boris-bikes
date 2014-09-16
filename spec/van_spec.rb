require './spec/spec_helper.rb'
require './lib/van.rb'
require './lib/bike.rb'

describe Van do

	it "should collect broken bikes from docks" do
		van = Van.new
		bike = Bike.new
		broken_bike = Bike.new.break!
		van.dock(bike)
		van.dock(broken_bike)

		expect(van.broken_bikes).to eq [broken_bike]	
	end

	it "should collect fixed bikes from garage" do 
		van = Van.new
		bike = Bike.new 
		broken_bike = Bike.new.break!
		van.dock(bike)
		van.dock(broken_bike)

		expect(van.available_bikes).to eq [bike]
	end
	

end