class Room

  attr_accessor :name
  attr_reader :sqft

  def initialize(args={})
    @name = args[:name] || 'bedroom'
    @sqft = args[:sqft] || 120
    @window_count = args[:window_count]
  end

end
