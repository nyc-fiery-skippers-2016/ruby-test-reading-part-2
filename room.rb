class Room

  attr_accessor :name, :sqft

  def initialize(args={})
    @name = args.fetch(:name, 'bedroom')
    @sqft = args.fetch(:sqft, 120)
  end
end
