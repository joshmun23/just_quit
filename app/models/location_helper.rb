class LocationHelper
  def initialize
    @locations = Location.all
  end

  def states_list
    @locations.map do |location|
      location
    end
  end
end
