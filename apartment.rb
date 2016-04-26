class Apartment
  attr_reader :number, :rooms, :monthly_rent

  def initialize(args={})
    @number = args.fetch(:number) { "no number" }
    @rooms = args.fetch(:rooms) { [] }
    @monthly_rent = args.fetch(:monthly_rent) { 1000 }
  end

  def total_sqft
    rooms.map{|room| room.sqft}.inject(:+)
  end

  def price_per_sqft
    monthly_rent.fdiv(total_sqft)
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    rooms.select{|room| room.name == "bedroom"}.length
  end
end
