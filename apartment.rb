class Apartment

  attr_accessor :number, :monthly_rent, :rooms

  def initialize(args={})
    @number = args[:number]
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @rooms = args[:rooms]
  end

  def total_sqft
    rooms.reduce(0) {|sum, room| sum += room.sqft}
  end

  def price_per_sqft
    monthly_rent.fdiv(total_sqft)
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    rooms.select {|room| room.name == 'bedroom'}.length
  end
end
