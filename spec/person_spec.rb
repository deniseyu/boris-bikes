require './lib/bike' 
require './lib/docking_station'
require './spec/spec_helper.rb'
require './lib/person'

describe Person do 

	let(:bike) { Bike.new }
	let(:person) { Person.new }
	let(:station) { DockingStation.new }

	it "should be able to rent a bike" do 
		station.dock(bike)
		station.release(bike)  
		person.rent_bike_from(station)
		expect(person.has_bike?).to eq true
	end
	
	it "should be able to return a bike" do
		person.rent_bike_from(station)
		person.return_bike_to(station)
		expect(person.has_bike?).to eq false 
	end

	it "should be able to break a bike" do 
		station.dock(bike)
		person.rent_bike_from(station)
		person.crash(bike)
		expect(bike.broken?).to eq true 
	end

end