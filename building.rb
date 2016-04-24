require 'pry'
class Building
  attr_reader :address, :apartments
  def initialize( args = {} )
    @address = args.fetch( :address )
    @apartments = args.fetch( :apartments )
  end

  def total_room_count
    apartments.map( &:rooms ).flatten.count
  end

  def total_monthly_revenue
    apartments.map( &:monthly_rent ).inject( :+ )
  end

  def apartments_by_rent
    apartments.sort_by { | apt | apt.monthly_rent }.reverse
  end

  def find_apartments_by_bedroom_count( num )
    apartments.each do | apartment |
      room_count = apartment.rooms.select { |room| room.name == 'bedroom' }.length
      return apartment if room_count == num
    end
  end

  def total_sqft
    sqft = 0
    apartments.each do | apartment |
      apartment.rooms.each { | room | sqft += room.sqft }
    end
    sqft
  end
end
