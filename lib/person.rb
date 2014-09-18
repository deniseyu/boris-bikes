class Person

	def rent_bike_from(station)
		@bike = station.release_available
	end

	def has_bike?
		@bike != nil 
	end

	def return_bike_to(station)
		station.bikes << @bike
		@bike = nil 
	end

	def crash
		@bike.break!
	end

end