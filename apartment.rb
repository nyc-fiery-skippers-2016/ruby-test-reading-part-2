
class Apartment

  attr_reader :number, :rooms, :monthly_rent

  def initialize(args={})
    @numer = args.fetch(:number){'1A'}
    @rooms = args.fetch(:rooms){2}
    @monthly_rent = args.fetch(:monthly_rent){1000}
  end

  def total_sqft
    sum = 0
    @rooms.each do |room|
      sum += room.sqft
    end
    sum
  end

  def price_per_sqft
    @monthly_rent.fdiv(total_sqft)
  end

  def room_count
    @rooms.length
  end

  def bedroom_count
    @rooms.select {|room| room.name == 'bedroom'}.length
  end

end
