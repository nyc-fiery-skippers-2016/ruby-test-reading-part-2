require_relative 'apartment'
require_relative 'room'

class Building
	attr_reader :address, :apartments

	def initialize(args={})
		@address = args[:address]
		@apartments = args[:apartments]
	end

	def total_room_count#array of apartment objects
		@apartments.inject(0) {|room_ct, apartment| room_ct + apartment.rooms.length}
		#@apartments.map {|apartment| apartment.rooms.length}.reduce(:+)
	end

	def total_monthly_revenue
		@apartments.inject(0) {|sum, apartment| sum + apartment.monthly_rent}
	end

	def apartments_by_rent
		@apartments.sort {|low, high| low.monthly_rent <=> high.monthly_rent}.reverse
	end

	def find_apartments_by_bedroom_count(number)
		@apartments.find {|apartment| apartment.bedroom_count == number}
		#detect vs select vs find
	end

	def total_sqft
		@apartments.inject(0) {|sqft, apartment| sqft + apartment.total_sqft}
	end

	#using variable names instead of instance variables???
	#variable name vs self vs instance variable name

end
