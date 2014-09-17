require './spec/spec_helper.rb'
require './lib/van.rb'
require './lib/bike.rb'
require './lib/docking_station.rb'
require './lib/garage.rb'


describe Van do

	it "should not collect working bikes from station" do 
	end


	it "should collect broken bikes from station" do
		van = Van.new
		bike = Bike.new
		station = DockingStation.new
		broken_bike = Bike.new.break!
		station.dock(bike)
		station.dock(broken_bike)
		van.collect_broken_bikes_from(station)
		expect(van.bikes).to eq [broken_bike]
	end

	it "should deliver broken bikes to the garage" do 
		# Van needs to release broken bikes so garage can dock 

		van = Van.new
		bike, broken_bike = Bike.new, Bike.new.break!
		garage = Garage.new
		van.dock(broken_bike)
		expect(van.broken_bikes).to eq [broken_bike]
		van.deliver_broken_bikes_to(garage)
		expect(van.broken_bikes).to eq []
		expect(garage.bikes).to eq [broken_bike]
		end


# require '~/Dropbox/Makers Academy/boris-bikes/lib/

=begin 
		it "should collect fixed bikes from garage" do 
		van = Van.new
		bike = Bike.new 
		broken_bike = Bike.new.break!
		van.dock(bike)
		van.dock(broken_bike)

		expect(van.available_bikes).to eq [bike]
	end
=end 


end