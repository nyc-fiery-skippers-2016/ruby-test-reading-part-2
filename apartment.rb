require 'pry'
class Apartment
  attr_reader :rooms, :monthly_rent

  def initialize(args={})
    @rooms = args.fetch(:rooms, "none given")
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
    array = []
    rooms.each do |room_in_apt|
      array << room_in_apt.sqft
    end
    array.reduce(:+)
  end

  def price_per_sqft
    monthly_rent/total_sqft.to_f
  end

  def room_count
    rooms.count
  end

  def bedroom_count
    rooms.select { |room_in_apt| room_in_apt.name == 'bedroom' }.count
  end

end

