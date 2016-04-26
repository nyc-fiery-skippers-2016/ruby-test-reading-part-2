require_relative 'apartment'

class Building

	attr_accessor :apartments

	def initialize(args={})
		@address = args[:address]
		@apartments = args[:apartments]
	end

	def total_room_count
		self.apartments.map {|apartment| apartment.room_count}.reduce{|sum,num| sum += num}
	end
	# Map the apartments array to acess each apartment individually (map beacuse it changes the result and returns an array) and count rooms in each apartment using the room_count method from the apartment class, and then add the values of those together using reduce. 

	def total_monthly_revenue
		self.apartments.map{|apartment| apartment.monthly_rent}.reduce{|sum,num| sum += num}
	end
	# Map the apartments array to acess each apartment individually to access the monthly rent for each apartment and then add it together using reduce.

	def apartments_by_rent
		self.apartments.sort_by{|apartment| apartment.monthly_rent}.reverse
	end
	# sort apartments BY specific criteria (monthly rent) so iterate over each apartment and call the monthly_rent method from apartments class onto it. This is why we use sort_by instead of just sort- sort doesn't take a block/criteria on it. It needs to be reveresed because the rspec says from largest to smallest. 

	def find_apartments_by_bedroom_count(number)
		self.apartments.find {|apartment|	apartment.bedroom_count == number}
	end
	# The argument number is entered and an apartment with that number of bedrooms will be returned. Using the find method will return the first value that it finds. 

	def total_sqft
		self.apartments.map{|apartment| apartment.total_sqft}.reduce{|sum, num| sum += num}
	end
	# iterate through apartments to calculate total sqft for each apartment (which is the total sqft method for rooms in apartments class) and adds them up together using reduce to get the total sqft for the entire bldg

end
