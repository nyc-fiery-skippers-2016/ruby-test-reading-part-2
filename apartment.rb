require_relative 'room'

class Apartment
attr_reader :rooms, :monthly_rent

  def initialize(args = {})
    @rooms = args[:rooms]
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
    self.rooms.reduce(0) do |sum, room|
      sum += room.sqft
    end
  end

  def price_per_sqft
    self.monthly_rent / total_sqft.to_f
  end

  def room_count
    self.rooms.length
  end

  def bedroom_count
    bedroom_array = @rooms.select {|room| room.name == "bedroom"}
    bedroom_array.length
  end

end
