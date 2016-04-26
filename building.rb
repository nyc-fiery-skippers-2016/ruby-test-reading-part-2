require_relative 'apartment'
require_relative 'room'

class Building

  attr_accessor :apartments

  def initialize(args={})
    @apartments = args[:apartments]
  end

  def total_room_count
    @apartments.reduce(0) do |sum, apartment|
      sum + apartment.room_count
    end     
  end

  def total_monthly_revenue
    @apartments.reduce(0) do |sum, apartment|
      sum + apartment.monthly_rent
    end    
  end

  def apartments_by_rent
    @apartments.sort_by do |apartment|
      -apartment.monthly_rent
    end
  end

  def find_apartments_by_bedroom_count(number)
    @apartments.find_all {|apartment| apartment.bedroom_count == number}
  end

  def total_sqft
    @apartments.reduce(0) do |sum, apartment|
      sum += apartment.total_sqft
    end
  end

end