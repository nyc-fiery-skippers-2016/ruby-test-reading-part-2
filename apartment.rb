class Apartment
  attr_reader :number,:rooms,:monthly_rent,:total_sqft, :price_per_sqft, :room_count, :bedroom_count
  def initialize(args={})
    @number = args[:number]
    @rooms = args[:rooms] || []
    @monthly_rent = args[:monthly_rent]||1000
    @total_sqft = rooms.inject(0){|sum,room|sum+room.sqft}
    @price_per_sqft = monthly_rent.fdiv(total_sqft)
    @room_count = rooms.count
    @bedroom_count = rooms.select{|room|room.name=='bedroom'}.count
  end
end
