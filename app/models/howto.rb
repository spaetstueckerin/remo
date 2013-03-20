class Howto < ActiveRecord::Base
  attr_accessible :category, :description, :name
  belongs_to :users
  #attr_accessible :user_id
end
