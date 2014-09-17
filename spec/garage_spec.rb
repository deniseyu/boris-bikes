require './spec/spec_helper.rb'
require './lib/van.rb'
require './lib/bike.rb'
require './lib/garage.rb'

describe Garage do 

	let(:bike) { Bike.new }
	let(:broken_bike) { Bike.new.break! }
	let(:van) { Van.new }
	let(:garage) { Garage.new(:capacity => 1000) }
	
	it "should fix broken bikes" do 
		garage.dock(broken_bike)
		garage.fix_broken_bikes(broken_bike)
		expect(garage.available_bikes).to eq [broken_bike]
	end

end
