class Room

  attr_accessor :name, :sqft

  def initialize(args = {})
    @name = args[:name] || "bedroom"
    @sqft = args[:sqft] || 120
    @window_count = args[:window_count]
  end


end

# first_room = Room.new(name: 'kitchen', sqft: 120, window_count: 5)
# p first_room.name
# p first_room.sqft
