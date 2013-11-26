class Level < ActiveRecord::Base
  attr_accessible :building_id, :floor_plan, :level, :total_consumption
  belongs_to :building
  has_many :locations
end
