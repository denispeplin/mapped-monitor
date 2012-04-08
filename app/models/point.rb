class Point < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name, :color

  acts_as_gmappable

  MARKER_COLORS = ['green', 'yellow', 'red']

  validates_inclusion_of :color, :in => MARKER_COLORS

  def gmaps4rails_address
    name
  end

  def gmaps4rails_marker_picture
    {
      "picture" => "/images/marker-#{color}.png",
      "width" => "20",
      "height" => "20",
    }
  end
end
