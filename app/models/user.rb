class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :annotation, :email, :firstname, :name, :password, :position, :username
  has_many :howtos
  has_many :todos
  belongs_to :enterprises
  accepts_nested_attributes_for :howtos
  accepts_nested_attributes_for :todos
  attr_accessible :user_id
  attr_accessible :role_id
  attr_accessible :enterprise_id
end
