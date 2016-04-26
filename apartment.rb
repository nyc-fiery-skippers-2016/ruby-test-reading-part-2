require_relative 'room'

class Apartment
	attr_accessor :number, :rooms, :monthly_rent

	def initialize(args={})
		@number = args.fetch(:number,'10#7')
		@rooms = args[:rooms]
		@monthly_rent = args.fetch(:monthly_rent, 1000)
	end

	def total_sqft
		self.rooms.map {|room| room.sqft}.reduce{|sum, num| sum += num}
	end

	def price_per_sqft
		self.monthly_rent.to_f/total_sqft.to_f
	end

	def room_count
		self.rooms.count
	end

	def bedroom_count
		self.rooms.select {|room| room.name == "bedroom".downcase}.count
		#or can do .length
	end

end
