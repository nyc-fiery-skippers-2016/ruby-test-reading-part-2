require_relative "apartment"
require "pry"

class Building
  attr_reader :apartments

  def initialize(args = {})
    @address = args[:address]
    @apartments = args[:apartments] # I know this is an array, but I formatted it this way so that it would pass the rspec tests :)
  end

    def total_room_count
      @apartments.collect { |object| object.room_count }.reduce(:+)
    end

  def total_monthly_revenue
      @apartments.collect { |object| object.monthly_rent}.reduce(:+)
  end

  def apartments_by_rent
    @apartments.sort do |object, object1|
      object1.monthly_rent <=> object.monthly_rent
    end
  end

  def find_apartments_by_bedroom_count(number)
    @apartments.find do |object|
      object.bedroom_count == number
    end
  end

  def total_sqft
    @apartments.collect { |object| object.total_sqft }.reduce(:+)
  end

end





