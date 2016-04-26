class Apartment

  attr_reader :monthly_rent, :rooms

  def initialize(args={})
    @monthly_rent = args[:monthly_rent] || 1000
    @rooms = args[:rooms]
  end

  def total_sqft
    @rooms.reduce(0) { |sum, room| sum + room.sqft}
  end

  def price_per_sqft
    @monthly_rent / total_sqft.to_f
  end

  def room_count
    @rooms.count
  end

  def bedroom_count
    bedrooms = @rooms.select { |room| room.name == 'bedroom'}
    bedrooms.count
  end

end
