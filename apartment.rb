require_relative "room"
require "pry"

class Apartment

  attr_accessor :monthly_rent
  attr_reader :rooms

  def initialize(args={})
    @number = args[:number]
    @monthly_rent = args[:monthly_rent] || 1000
    @rooms = args[:rooms] # I know this is an array, but I formatted it this way so that it would pass the rspec tests :)
  end

  def total_sqft
    @rooms.collect { |object| object.sqft }.reduce(:+)
  end

  def price_per_sqft
  @monthly_rent / total_sqft.to_f
  end

  def room_count
    @rooms.length
  end

  def bedroom_count
    @rooms.select { |object| object.name == "bedroom"}.count
  end

end


