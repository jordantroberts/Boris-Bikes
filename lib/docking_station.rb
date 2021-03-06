require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes << Bike.new
    @bikes.pop
  end

  def get_bike
  end

  def dock(bike)
    # We need to return the bike we dock
    # Use an instance variable to store the bike in the 'state' of this instance
    # we need our DockingStation to REMEMBER whatever it docks and return the contents of its memory!
    raise "Docking Station full" if full?
    @bikes << bike
    bike
    #@bikes.map {|bike| puts bike}
  end

  private
  def empty?
    @bikes.count == 0
  end

  def full?
    @bikes.count == 20
  end

  # Let's add to our bike method to return the bike we docked:
  #def bike
  #  @bike
  #end
  #(removed because of attr_reader)
end
