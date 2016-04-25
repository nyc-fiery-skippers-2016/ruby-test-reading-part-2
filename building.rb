class Building

  attr_reader :apartments

  def initialize(args={})
    @address = args[:address]
    @apartments = args[:apartments]
  end

  def total_room_count
    @apartments.reduce(0){|sum, apartment| sum + apartment.room_count}
  end

  def total_monthly_revenue
    @apartments.reduce(0){|sum, apartment| sum + apartment.monthly_rent}
  end

  def apartments_by_rent
    @apartments.sort_by {|apartment| -apartment.monthly_rent}
  end

  def find_apartments_by_bedroom_count(bedrooms)
    @apartments.find {|apartment| apartment.bedroom_count == bedrooms}
  end

  def total_sqft
    @apartments.reduce(0){|sum, apartment| sum + apartment.total_sqft}
  end

end
