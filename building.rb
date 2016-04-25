require_relative "apartment"
require "pry"

class Building
  attr_reader :apartments

  def initialize(args = {})
    @address = args[:address]
    @apartments = []
  end

  def total_room_count
    @total_rooms = 0
      @apartments.each do |object|
        # binding.pry
        @total_rooms += object.rooms.length
        # binding.pry
      end
    @total_rooms
    # binding.pry
  end

  def total_monthly_revenue
    @total_revenue = 0
      @apartments.each do |object|
        @total_revenue += object.monthly_rent
      end
    @total_revenue
  end

  def apartments_by_rent
    @apartments.sort do |object, object1|
      object.monthly_rent <=> object1.monthly_rent
    end
  end

  def find_apartments_by_bedroom_count(number)
    @apartments.each do |object|
      if object.bedroom_count == number
        object
      end
    end
  end

  def total_sqft
    total = 0
      @apartments.each do |object|
        total += object.total_sqft
      end
    total
  end


end

# p new_building.apartments.length
# p new_building.total_room_count
# p new_building.total_monthly_revenue
# p new_building.apartments_by_rent
# p new_building.find_apartments_by_bedroom_count(1)
# p new_building.total_sqft







