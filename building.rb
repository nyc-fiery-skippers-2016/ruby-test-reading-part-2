require_relative 'apartment'

class Building

  attr_accessor :apartments

  def initialize(args={})
    @apartments = args[:apartments]
  end

  def total_room_count
    @apartments.map {|apartment| apartment.rooms}.flatten.length
  end

  def total_monthly_revenue
    @apartments.reduce(0) {|sum, apartment|sum += apartment.monthly_rent}
  end

  def apartments_by_rent
   @apartments.sort {|apartment1, apartment2| apartment2.monthly_rent <=> apartment1.monthly_rent}
  end

  def total_monthly_revenue
    all_rents = []
    @apartments.select {|apartment| all_rents << apartment.monthly_rent}
    all_rents.reduce(:+)
  end

  def apartments_by_rent
    @apartments.sort {|apartment1, apartment2| apartment2.monthly_rent <=> apartment1.monthly_rent}
  end

  def find_apartments_by_bedroom_count(num_of_bedrooms)
    @apartments.find {|apartment| apartment.bedroom_count == num_of_bedrooms}
  end

  def total_sqft
    @apartments.reduce(0) {|sum, apartment| sum += apartment.total_sqft}
  end
end

