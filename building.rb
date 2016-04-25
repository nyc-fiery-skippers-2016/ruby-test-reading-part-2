
class Building

  attr_reader :address, :apartments

  def initialize(args={})
    @address = args.fetch(:address)
    @apartments = args.fetch(:apartments)
  end

  def total_room_count
    @apartments.reduce(0) { |sum, apt| sum + apt.rooms.length }
  end

  def total_monthly_revenue
    @apartments.reduce(0)  { |sum, apt| sum + apt.monthly_rent }
  end

  def apartments_by_rent
    @apartments.sort_by { |apt| apt.monthly_rent }
  end

  def find_apartments_by_bedroom_count(number_of_bedrooms)
    @apartments.detect { |apt| apt.bedroom_count == number_of_bedrooms}
  end

  def total_sqft
    @apartments.reduce(0)  { |sum, apt| sum + apt.total_sqft }
  end
end
