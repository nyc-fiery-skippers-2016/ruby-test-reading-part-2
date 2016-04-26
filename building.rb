class Building

  attr_reader :address, :apartments

  def initialize(args = {})
    @address = args.fetch(:address)
    @apartments = args.fetch(:apartments)
  end

  def total_room_count
    @apartments.inject(0) {|total, apartment| total + apartment.room_count}
  end

  def total_monthly_revenue
    @apartments.inject(0) {|total, apartment| total + apartment.monthly_rent}
  end

  def apartments_by_rent
    @apartments.sort_by {|apartment| apartment.monthly_rent}.reverse
  end

  def find_apartments_by_bedroom_count(bedrooms)
    @apartments.find { |apartment| apartment.bedroom_count == bedrooms}
  end

  def total_sqft
    @apartments.inject(0) {|total, apartment| total + apartment.total_sqft}
  end

end
