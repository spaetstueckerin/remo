class Location < ActiveRecord::Base
  attr_accessible :description, :name, :squaremeter, :height, :level_id, :photo, :building_id
  belongs_to :level
  has_attached_file :photo,
    :styles => {
      :thumb => "100x100",
      :small  => "250x250>",
      :show => "700x"},
      :default_url => "/images/default.jpg"
      
end