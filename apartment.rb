class Apartment
  attr_reader :number, :rooms, :monthly_rent

  def initialize(args = {})
    @number = args.fetch(:number, '#1')
    @rooms = args.fetch(:rooms, 1)
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
    @rooms.inject(0) {|total, room| total + room.sqft}
  end

  def price_per_sqft
    @monthly_rent/total_sqft.to_f
  end

  def room_count
    @rooms.length
  end

  def bedroom_count
    @rooms.count {|room| room.name == 'bedroom'}
  end

end
