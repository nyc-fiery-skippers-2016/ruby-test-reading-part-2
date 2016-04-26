class Room

  attr_accessor :name
  attr_reader :sqft, :window_count

  def initialize(args={})
    @name = args[:name] || 'bedroom'
    @sqft = args[:sqft] || 120
    @window_count = args[:window_count]
  end
end
