class Role < ActiveRecord::Base
  attr_accessible :role_description, :role_name
  has_and_belongs_to_many :users
end
