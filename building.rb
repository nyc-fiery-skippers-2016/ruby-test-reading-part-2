require 'pry'

class Building
  attr_reader :apartments

  def initialize(args={})
    @apartments = args[:apartments]
    @apt = Apartment.new
  end

  def total_room_count
    rooms_in_building = apartments.map do |apts|
      apts.room_count
    end
    rooms_in_building.reduce(:+)
  end

  def total_monthly_revenue
    total_rents = apartments.map { |apts| apts.monthly_rent }
    total_rents.reduce(:+)

  end

  def apartments_by_rent
    low_high = apartments.sort_by! {|apts| apts.monthly_rent}
    low_high.reverse
  end

  def find_apartments_by_bedroom_count(count)
    apartments.find do |apt|
      apt.bedroom_count == count
    end
  end

  def total_sqft
   total = apartments.map do |apt|
    apt.total_sqft
    end
  total.reduce(:+)
end

end
