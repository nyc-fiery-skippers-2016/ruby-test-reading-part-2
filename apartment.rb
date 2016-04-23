require 'pry'
class Apartment
  attr_accessor :monthly_rent, :number, :rooms

  def initialize(args={})
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @number = args.fetch(:number,'')
    @rooms = args.fetch(:rooms,'')
  end

  def total_sqft
    # binding.pry
    sq_footage = rooms.map do |room|
      room.sqft
    end
    sq_footage.reduce(:+)
  end

  def price_per_sqft
    monthly_rent/total_sqft.to_f
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    bedrooms = rooms.select {|room| room.name == "bedroom"}
    bedrooms.length
  end



end