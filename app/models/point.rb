class Point < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name
end
