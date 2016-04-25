class Car
attr_reader :color, :model, :total_miles_traveled, :total_fuel_used
attr_accessor :name
  def initialize(args={})
    @color = args[:color]
    @model = args[:model]
    @name = args[:name]
    @total_miles_traveled = 0
    @total_fuel_used = 0
  end

  def travel(trip_miles)
    @total_miles_traveled += trip_miles
  end

  def fuel(trip_fuel)
    @total_fuel_used += trip_fuel
  end

  def miles_per_gallon
    @total_miles_traveled / @total_fuel_used
  end

end

car = Car.new(model: 'honda', color: 'red', name: 'rufus')
p car.name
car.name= 'lisa'
p car.name
car.travel(3)
p car.miles_traveled
