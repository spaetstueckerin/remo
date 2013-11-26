class Building < ActiveRecord::Base
  attr_accessible :description, :name, :site_id
  has_many :levels
end
