require './spec/spec_helper.rb'
require './lib/van.rb'
require './lib/bike.rb'
require './lib/docking_station.rb'
require './lib/garage.rb'

describe Van do

	let(:bike) { Bike.new }
	let(:broken_bike) { Bike.new.break! }
	let(:van) { Van.new }
	let(:station) { DockingStation.new }
	let(:garage) { Garage.new }

	# it "should not collect working bikes from station" do 
	# 	expect(station.broken_bikes).to eq []
	# 	expect( lambda {van.collect_broken_bikes_from(station}).to raise_error(RuntimeError)
	# end

	it "should collect broken bikes from station" do
		station.dock(bike)
		station.dock(broken_bike)
		van.collect_broken_bikes_from(station)
		expect(van.bikes).to eq [broken_bike]
	end

	it "should deliver broken bikes to the garage" do 
		# Van needs to release broken bikes so garage can dock 
		van.dock(broken_bike)
		expect(van.broken_bikes).to eq [broken_bike]
		van.deliver_broken_bikes_to(garage)
		expect(van.broken_bikes).to eq []
		expect(garage.bikes).to eq [broken_bike]
		end

	 it "should collect fixed bikes from garage" do 
	 	garage.dock(bike)
	 	garage.dock(broken_bike)
	 	van.collect_fixed_bikes_from(garage)
	 	expect(van.bikes).to eq [bike]
	 end

	 it "should deliver fixed bikes to docking station" do 
	 	van.dock(bike)
	 	expect(van.bikes).to eq [bike]
	 	van.deliver_fixed_bikes_to(station)
	 	expect(van.bikes).to eq []
	 	expect(station.bikes).to eq [bike]
	 end
end