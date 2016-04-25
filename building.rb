require_relative 'apartment'
require_relative 'room'

class Building
	attr_reader :address, :apartments

	def initialize(args={})
		@address = args[:address]
		@apartments = args[:apartments]
	end

	def total_room_count#array of apartment objects
		@apartments.reduce(0) {|room_ct, apartment| room_ct += apartment.rooms.length}
	end

	def total_monthly_revenue
		@apartments.reduce(0) {|sum, apartment| sum += apartment.monthly_rent}
	end

	def apartments_by_rent
		@apartments.sort {|a, b| a.monthly_rent <=> b.monthly_rent}.reverse
	end

	def find_apartments_by_bedroom_count(number)
		@apartments.detect {|apartment| apartment.bedroom_count == number}
		#detect vs select
	end

	def total_sqft
		@apartments.reduce(0) {|sqft, apartment| sqft + apartment.total_sqft}
	end

end
