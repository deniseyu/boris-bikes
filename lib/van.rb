require_relative 'bike_container'

class Van

	include BikeContainer

	def broken_bikes
		bikes.select { |bike| bike.broken? }
	end

end