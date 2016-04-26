require_relative 'room'

class Apartment
  attr_accessor :rooms, :monthly_rent
  
  def initialize(args={})
    @rooms = args[:rooms] || Room.new
    @monthly_rent = args[:monthly_rent] || 1000 
  end

  def total_sqft
    total_sqft = @rooms.reduce(0) { |sum, room| sum + room.sqft }
  end

  def price_per_sqft
    @monthly_rent.to_f / total_sqft.to_f
  end

  def room_count
    @rooms.count
  end

  def bedroom_count
    bedroom_count = @rooms.reduce(0) do |sum, room| if room.name == 'bedroom'
        sum += 1
      else
        sum
      end
    end
  end
end
