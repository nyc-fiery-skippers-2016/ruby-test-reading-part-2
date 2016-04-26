
class Room
  attr_accessor :name, :sqft
  
  def initialize(args={})
    @name = args[:name] || 'bedroom'
    @sqft = args[:sqft] || 120
  end

end
