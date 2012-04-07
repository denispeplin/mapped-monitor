class Point < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name

  acts_as_gmappable

  def gmaps4rails_address
    name
  end
end
