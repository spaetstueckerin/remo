class Location < ActiveRecord::Base
  attr_accessible :description, :name, :squaremeter, :height, :building_id, :floor
end
