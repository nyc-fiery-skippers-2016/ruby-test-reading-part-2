
class Building

  attr_reader :address, :apartments

  def initialize(args={})
    @address = args.fetch(:address)
    @apartments = args.fetch(:apartments)
  end

  def total_room_count
    total_rooms = 0
    @apartments.each do |apt|
      total_rooms += apt.rooms.length
    end
    total_rooms
  end

  def total_monthly_revenue
    total_rev = 0
    @apartments.each do |apt|
      total_rev += apt.monthly_rent
    end
    total_rev
  end

  def apartments_by_rent
    @apartments.sort_by { |apt| apt.monthly_rent }
  end

  def find_apartments_by_bedroom_count(number_of_bedrooms)
    @apartments.select { |apt| apt.bedroom_count == number_of_bedrooms}
  end

  def total_sqft
    total_building_sqft = 0
    @apartments.each do |apt|
      total_building_sqft += apt.total_sqft
    end
    total_building_sqft
  end
end
