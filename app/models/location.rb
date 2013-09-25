class Location < ActiveRecord::Base
  attr_accessible :description, :name, :squaremeter, :height, :building_id, :floor, :photo, :enterprise_id
  has_attached_file :photo,
    :styles => {
      :thumb => "100x100",
      :small  => "250x250>",
      :show => "700x"},
      :default_url => "/images/default.jpg"
      
end