require_relative 'bike'

class DockingStation
  attr_reader :bike
  #This is a shorthand way of writing:
    #def bike
      #@bike
    #end
  # This essentially writes the method above on any instances of this class.
  # The attribute reader allows us to READ the @bike attribute we set.
  # Using attr_reader, we can now remove the #bike method we defined.


  def release_bike
    Bike.new
  end

  def get_bike
  end

  def dock(bike)
    # We need to return the bike we dock
    # Use an instance variable to store the bike in the 'state' of this instance
    # we need our DockingStation to REMEMBER whatever it docks and return the contents of its memory!
    @bike = bike
  end

  # Let's add to our bike method to return the bike we docked:
  #def bike
  #  @bike
  #end
  #(removed because of attr_reader)

end
