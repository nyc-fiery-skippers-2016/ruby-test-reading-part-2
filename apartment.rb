
class Apartment

  attr_reader :rooms, :monthly_rent

  def initialize(args = {})
    @rooms = args[:rooms]
    @monthly_rent = args[:monthly_rent] || 1000
  end

  def total_sqft
    rooms.inject(0) { |sum, apt| sum + apt.sqft }
  end

  def price_per_sqft
    monthly_rent / total_sqft.to_f
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    bd_count = rooms.select do |bdrm|
      bdrm.name == "bedroom"
    end
    bd_count.length
  end

end
