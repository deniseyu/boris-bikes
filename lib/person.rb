class Person


	def rent_bike_from(station)
		@bike = station.available_bikes.pop 
		# @bikes.delete(available_bikes.pop)
	end

	def has_bike?
		@bike != nil 
	end

	def return_bike_to(station)
		station.available_bikes << @bike
		# When we do this, the bike still exists on the person 
	end

	def crash(bike)
		@bike.break!
	end

end