
class Building
  attr_reader :apartments

  def initialize(args = {})
    @apartments = args[:apartments]
  end

  def total_sqft
    apartments.inject(0) do |sum, apt|
      sum + apt.total_sqft
    end
  end

  def total_room_count
    apartments.inject(0) do |sum, apt|
      sum + apt.room_count
    end
  end

  def total_monthly_revenue
    apartments.reduce(0) do |sum, apt|
      sum + apt.monthly_rent
    end
  end

  def apartments_by_rent
    apartments.sort do |a, b|
      b.monthly_rent <=> a.monthly_rent
    end
  end

  def find_apartments_by_bedroom_count(num)
    apartments.find do |apt|
      apt.bedroom_count == num
    end
  end

end
