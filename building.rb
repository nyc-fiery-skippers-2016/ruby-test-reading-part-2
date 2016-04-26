class Building
  attr_reader :apartments, :address
  def initialize(args={})
    @address = args[:address]
    @apartments = args[:apartments]
  end

  def total_room_count
    sum = 0
    apartments.each{|apt|sum += apt.room_count}
    sum
  end

  def total_monthly_revenue
    sum = 0
    apartments.each{|apt|sum += apt.monthly_rent}
    sum
  end

  def apartments_by_rent
    apartments.sort_by{|apt|apt.monthly_rent}.reverse
  end

  def find_apartments_by_bedroom_count(count)
    apartments.find{|apt|apt.bedroom_count==count} #assuming not to return more than one apt because an array is not expected
  end

  def total_sqft
    sum = 0
    apartments.each{|apt|sum += apt.total_sqft}
    sum
  end
end
