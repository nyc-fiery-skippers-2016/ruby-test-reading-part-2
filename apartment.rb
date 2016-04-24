class Apartment
  attr_reader :number, :rooms, :monthly_rent
  def initialize( args = {} )
    @number = args.fetch( :number ) { 'No available unit' }
    @rooms = args.fetch( :rooms ) { 'No rooms for a unit not available' }
    @monthly_rent = args.fetch( :monthly_rent ) { 1000 }
  end

  def total_sqft
    rooms.map( &:sqft ).inject( &:+ )
  end

  def price_per_sqft
    monthly_rent.to_f / total_sqft.to_f
  end

  def room_count
    rooms.count
  end

  def bedroom_count
    rooms.select { |room| room.name == 'bedroom' }.count
  end
end
