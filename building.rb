require_relative 'apartment'

class Building
	attr_accessor :apartments
	def initialize(args={})
		@address = args[:address]
		@apartments = args[:apartments]
	end
	#fetch gives you an auto answer

	def total_room_count
		self.apartments.map {|apartment| apartment.room_count}.reduce{|sum, num| sum+=num}
	#so you want to return an array of apartments where it counts each room for each apartment, and then adds all the rooms together with reduce for building
	end
	
	def total_monthly_revenue
		self.apartments.map {|apartment| apartment.monthly_rent}.reduce{|sum, num| sum+=num}
	#goes through creates array with apartments and finds their rent, then adds all rents together to give total rent for building
	end

	def apartments_by_rent
		self.apartments.sort_by {|apartment| apartment.monthly_rent}.reverse
	#you want to apartments to be sorted by monthly_rent so iterate through with sort-by and then you need reverse because the rspec says from largest to smallest
	end

	def	find_apartments_by_bedroom_count(input)
		self.apartments.find {|apartment| apartment.bedroom_count == input}
	#if you input a number it will find you an apartment that matches that bedroom count
	end

	def total_sqft
		self.apartments.map {|apartment| apartment.total_sqft}.reduce{|sum, num| sum +=num}
	#map iterates through the apartments and finds total sqft for each apartment which is the total sqft method for rooms in apartment class and then adds them up via reduce to give building sqft
	end

end
