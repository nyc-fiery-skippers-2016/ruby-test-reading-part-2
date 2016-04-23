class Room
  attr_accessor :name, :sqft, :monthly_rent

  def initialize(args={})
    @name = args.fetch(:name, "bedroom")
    @sqft = args.fetch(:sqft, 120)
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end
end
