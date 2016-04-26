module UsersHelper
  require 'random-location'
  #  this method ensures that the location entered is a valid city.
  # if not correct it will return true --> for error message to display.
    def checkLocation(location)
      array=Geocoder.coordinates(location)
      if array.nil?
        return true
      else
        return false
      end
    end

    #  this methods returns a random Lon Lat within fixed_radius in the city
    # Lon Lat should be stored into DB and then passed to JS
    def randomizeCoordinate(location,radius)
      coordinates = Geocoder.coordinates(location)
      lat,lng=RandomLocation.near_by(coordinates[0], coordinates[1], radius)  # radius in meters; 8046 is about 5 miles
      return lat,lng
    end
end
