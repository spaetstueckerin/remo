class Howto < ActiveRecord::Base
  attr_accessible :category, :description, :name, :user_id
  belongs_to :users
  #attr_accessible :user_id
end
