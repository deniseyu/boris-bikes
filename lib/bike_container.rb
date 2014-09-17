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

	def release(bike)
		raise "No bikes for you" if bike_count == 0
		bikes.delete(bike)
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
