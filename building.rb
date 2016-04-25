require 'pry'
class Building
  attr_reader :apartments, :rooms
def initialize(args={})
  @apartments = args.fetch(:apartments)
end

def total_room_count

  @apartments.map{|apt| apt.rooms.length}.reduce(:+)
end

def total_monthly_revenue
  @apartments.map{|apt| apt.monthly_rent}.reduce(:+)
end


def apartments_by_rent
  @apartments.sort_by{|apt| apt.monthly_rent}.reverse
end

def find_apartments_by_bedroom_count(n)
  @apartments.find{|apt| apt.bedroom_count == n }
end

  def total_sqft
@apartments.map{|apt| apt.rooms.map{|room| p room.sqft}}.flatten.reduce(:+)
  end
end
