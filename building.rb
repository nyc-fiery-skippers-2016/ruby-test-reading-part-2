class Building
  attr_reader :address, :apartments

  def initialize(args={})
    @address = args.fetch(:address) { "000 No-Street" }
    @apartments = args.fetch(:apartments) { [] }
  end

  def total_room_count
    apartments.map{|apt| apt.room_count}.inject(:+)
  end

  def total_monthly_revenue
    apartments.map{|apt| apt.monthly_rent}.inject(:+)
  end

  def apartments_by_rent
    apartments.sort_by{|apt| apt.monthly_rent}.reverse
  end

  def find_apartments_by_bedroom_count(num)
    apartments.find{|apt| apt.bedroom_count == num}
  end

  def total_sqft
    apartments.map{|apt| apt.total_sqft}.inject(:+)
  end
end
