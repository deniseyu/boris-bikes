module BikeContainer

	DEFAULT_CAPACITY = 20

	attr_accessor :capacity

	def bikes
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		raise "No more room for bikes" if full?
		bikes << bike
	end

	# We should make it so only bike class objects can be docked

	def release_available
		raise "No bikes for you" if available_bikes == []
		bikes.delete(available_bikes.pop)
	end

	def release_broken
		raise "No bikes for you" if broken_bikes == []
		bikes.delete(broken_bikes.pop)
	end

	def full?
		bike_count == capacity
	end 

	def available_bikes
		bikes.reject { |bike| bike.broken? }
	end

	def broken_bikes
		bikes.select { |bike| bike.broken? }
	end

end
