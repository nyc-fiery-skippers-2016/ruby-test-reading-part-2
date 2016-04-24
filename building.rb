
class Building
  attr_reader :apartments

  def initialize(args={})
    @apartments = args[:apartments]

  end

  def total_room_count
    @apartments.map(&:room_count).reduce(:+)
  end

  def total_monthly_revenue
    @apartments.map(&:monthly_rent).reduce(:+)
  end

  def apartments_by_rent
    @apartments.sort_by {|apt| apt.monthly_rent}.reverse
  end

  def find_apartments_by_bedroom_count(num)
    @apartments.find{|apt| apt.bedroom_count == num}
  end

  def total_sqft
    @apartments.map(&:total_sqft).reduce(:+)
  end

end
