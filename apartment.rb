require_relative 'room'

class Apartment
  attr_reader :monthly_rent, :rooms, :numbers

  def initialize(args={})
    @number = args[:number]
    @rooms = args[:rooms]
    @monthly_rent = args[:monthly_rent] ||= 1000
  end

  def generate_rooms
    @all_rooms << Room.new
  end

  def total_sqft
    @rooms.map(&:sqft).reduce(:+)
  end

  def price_per_sqft
    @monthly_rent / total_sqft.to_f
  end

  def room_count
    @rooms.count
  end

  def bedroom_count
    @rooms.select {|rooms| rooms.name == "bedroom"}.count
  end
end
