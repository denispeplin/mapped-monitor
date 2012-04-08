class Point < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name

  acts_as_gmappable

  def gmaps4rails_address
    name
  end

  def gmaps4rails_marker_picture
    {
      "picture" => "/images/marker-green.png",
      "width" => "20",
      "height" => "20",
    }
  end
end
