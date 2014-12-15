require_relative 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def fix_broken_bikes(broken_bike)
		broken_bikes.each { |bike| bike.fix! }
	end

end