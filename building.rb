class Building
  attr_reader :apartments, :address, :total_room_count, :total_monthly_revenue, :apartments_by_rent, :total_sqft

  def initialize(args={})
    @address = args[:address]
    @apartments = args[:apartments]
    @total_room_count = apartments.reduce(0){|sum,apt|sum+apt.room_count}
    @total_monthly_revenue = apartments.reduce(0){|sum,apt|sum+apt.monthly_rent}
    @apartments_by_rent = apartments.sort_by{|apt|apt.monthly_rent}.reverse
    @total_sqft = apartments.reduce(0){|sum,apt|sum+apt.total_sqft}
  end

  def find_apartments_by_bedroom_count(count)
    apartments.find{|apt|apt.bedroom_count==count}
  end

end
