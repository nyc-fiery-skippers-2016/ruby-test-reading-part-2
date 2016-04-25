require_relative 'apartment'
require_relative 'room'

class Building

attr_reader :apartments

  def initialize(args = {})
    @apartments = args[:apartments]
  end

  def total_room_count
    @apartments.reduce(0) {|sum, apartment|
      sum += apartment.rooms.length}
  end

  def total_monthly_revenue
    @apartments.reduce(0) {|sum, apartment|
      sum += apartment.monthly_rent }
  end

  def apartments_by_rent
    self.apartments.sort_by{|apartment| -apartment.monthly_rent}
  end

  def find_apartments_by_bedroom_count(num)
    apt_array = self.apartments.select {|apt|
      apt.bedroom_count == num}
    apt_array[0] #This is here because the rspec was expecting it not to be in an array
  end

  def total_sqft
  sqft_array = []
    self.apartments.each do |apt|
      apt.rooms.each do |room|
        sqft_array << room.sqft
      end
    end
  sqft_array.flatten.reduce(:+)
  end

end

# room1 = Room.new(name: "bathroom", sqft: 120)
# room2 = Room.new(name: "bedroom", sqft: 140)
# room3 = Room.new(name: "living room", sqft: 120)
# room4 = Room.new(name: "dining room", sqft: 140)

# apartment1 = Apartment.new(rooms: [room1,room2], monthly_rent: 1000)
# apartment2 = Apartment.new(rooms: [room3,room4], monthly_rent: 1000)

# building1 = Building.new(apartments: [apartment1,apartment2])


# # building1.apartments - array of apartment objects

# # building1.apartments.each do |apt|
# #   p apt.rooms # prints 2 arrays of 2 rooms
# # end

#     building1.apartments.each do |apt|
#     apt.rooms.reduce(0) do |sum,room|
#     sum += room.sqft
#   end
# end


# # building1.apartments.each do |apt|
# #   p apt.bedroom_count
# # # end