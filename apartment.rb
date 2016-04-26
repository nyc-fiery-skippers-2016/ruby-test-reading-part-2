require_relative 'room'

class Apartment
	attr_accessor :number, :rooms, :monthly_rent

	def initialize(args = {})
		@number = args[:number]
		@rooms = args[:rooms] #[array of room objects; each room object has square feet]
		@monthly_rent = args.fetch(:monthly_rent, 1000)
	end

	def total_sqft
		self.rooms.map {|room| room.sqft}.reduce{|sum,num| sum += num}		
	end
	# 

	def price_per_sqft
		self.monthly_rent.to_f / total_sqft.to_f
	end

	def room_count
		self.rooms.count
	end

	def bedroom_count
		self.rooms.select {|room| room.name == "bedroom".downcase}.length
	end

end

