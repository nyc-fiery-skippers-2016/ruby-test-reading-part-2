require_relative "room"
require "pry"

class Apartment
	attr_reader :rooms, :monthly_rent

	def initialize(args={})
		@rooms = args[:rooms]
		@monthly_rent = args[:monthly_rent] || 1000
	end

	def total_sqft
		rooms.reduce(0) {|sum, room| sum + room.sqft } 
	end

	def price_per_sqft
		monthly_rent.to_f / total_sqft
	end

	def room_count
		rooms.length
	end

	def bedroom_count
		rooms.count { |name| name == "bedroom" }
	end

end