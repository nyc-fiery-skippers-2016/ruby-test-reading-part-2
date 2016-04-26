require_relative 'room'

class Apartment
attr_reader :window_count, :rooms, :monthly_rent

	def initialize(args={})
		@window_count = args[:window_count]
		@rooms = args[:rooms]
		@monthly_rent = args.fetch(:monthly_rent) { 1000 }
	end

	def total_sqft #this is an array of rooms
		rooms.inject(0) {|ttl_sqft, room| ttl_sqft + room.sqft}
	end

	def price_per_sqft
		monthly_rent.fdiv(total_sqft)
	end

	def room_count
		rooms.length
	end

	def bedroom_count
		rooms.count {|room| room.name == "bedroom"}
		#rooms.count {|room| room.name.eql?("bedroom")}
	end

end
