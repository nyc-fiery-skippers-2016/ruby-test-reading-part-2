require_relative 'apartment'

class Building

  attr_accessor :apartments

  def initialize(args={})
    @apartments = args[:apartments]
  end

  def total_room_count
    all_rooms = []
    @apartments.select {|apartment| all_rooms << apartment.rooms}
    all_rooms.flatten.length
  end

  def total_monthly_revenue
    all_rents = []
    @apartments.select {|apartment| all_rents << apartment.monthly_rent}
    all_rents.reduce(:+)
  end

  def apartments_by_rent
    apartments_by_rent = @apartments.sort {|apartment1, apartment2| apartment2.monthly_rent <=> apartment1.monthly_rent}
    apartments_by_rent
  end

  def find_apartments_by_bedroom_count(num_of_bedrooms)
    @apartments.find {|apartment| apartment.bedroom_count == num_of_bedrooms}
  end

  def total_sqft
    building_sqft = []
    @apartments.select {|apartment| building_sqft <<  apartment.total_sqft}
    building_sqft.reduce(:+)
  end
end
