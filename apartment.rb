require 'pry'
class Apartment
attr_accessor :monthly_rent
attr_reader :rooms, :sqft
  def initialize(args={})
    @rooms = args.fetch(:rooms, :monthly_rent)
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft

    @rooms.map {|room| room.sqft}.reduce(:+)
  end

  def price_per_sqft
    (@monthly_rent).to_f / (total_sqft).to_f
  end

  def room_count
    self.rooms.length
  end

  def bedroom_count
    @rooms.select{|room| room.name == "bedroom"}.length
  end

end