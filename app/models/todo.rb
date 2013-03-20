class Todo < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
  belongs_to :users
end
