class Building

  attr_reader :apartments, :address

  def initialize(args={})
    @address = args.fetch(:address)
    @apartments = args.fetch(:apartments)
  end

  def total_room_count
    @apartments.reduce(0) { |sum, apt| sum + apt.rooms.length }
  end

  def total_monthly_revenue
    @apartments.reduce(0) { |sum, rent| sum + rent.monthly_rent}
  end

  def apartments_by_rent
    @apartments.sort { |apt2, apt1| apt1.monthly_rent <=> apt2.monthly_rent }
  end

  def find_apartments_by_bedroom_count(num)
    @apartments.detect { |apt| apt.bedroom_count == num }
  end

  def total_sqft
    @apartments.reduce(0) { |sum, apt| sum + apt.total_sqft }
  end


end
