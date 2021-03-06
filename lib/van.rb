require_relative 'bike_container'

class Van

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end


	def collect_broken_bikes_from(station)
		station.broken_bikes.each do |bike|
			dock(bike)
			station.release_broken
		end
	end

	def deliver_broken_bikes_to(garage)
		broken_bikes.each do |bike|
			garage.dock(bike)
			self.release_broken
		end
	end

	def collect_fixed_bikes_from(garage)
		garage.available_bikes.each do |bike|
			dock(bike)
			garage.release_available
		end
	end

	def deliver_fixed_bikes_to(station)
		available_bikes.each do |bike|
			station.dock(bike)
			release_available
		end
	end

end