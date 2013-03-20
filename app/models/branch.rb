class Branch < ActiveRecord::Base
  attr_accessible :description, :name, :id
  has_many :enterprises
end
