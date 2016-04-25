class Building
attr_reader :address, :apartments

  def initialize(args={})
    @address = args.fetch(:address, "none given")
    @apartments = args.fetch(:apartments, "none given")
  end

  def total_room_count
    apartments.collect { |apt| apt.room_count }.reduce(:+)
  end

  def total_monthly_revenue
    apartments.collect { |apt| apt.monthly_rent}.reduce(:+)
  end

  def apartments_by_rent
    apartments.sort_by { |apt| apt.monthly_rent }.reverse
  end

  def find_apartments_by_bedroom_count(number)
    apartments.find { |apt| apt.bedroom_count == number }
  end

  def total_sqft
    apartments.collect { |apt| apt.total_sqft }.reduce(:+)
  end

end

