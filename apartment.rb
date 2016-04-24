require_relative 'room'

class Apartment
attr_reader :number, :rooms, :monthly_rent

	def initialize(args={})
		@number = args[:number]
		@rooms = args[:rooms]
		@monthly_rent = args[:monthly_rent] || 1000
	end

	def total_sqft #this is an array of rooms
		ttl_sqft = @rooms.reduce(0) {|ttl_sqft, room| ttl_sqft += room.sqft}
	end

	def price_per_sqft
		@monthly_rent.fdiv(total_sqft)
	end

	def room_count
		@rooms.length
	end

	def bedroom_count
		@rooms.count {|room| room.name == "bedroom"}
	end

end
