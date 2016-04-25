class Building
attr_reader :address, :apartments

  def initialize(args={})
    @address = args.fetch(:address, "none given")
    @apartments = args.fetch(:apartments, "none given")
  end

  def total_room_count

  end

end
