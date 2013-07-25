class Contract < ActiveRecord::Base
  attr_accessible :condition, :description, :duration_from, :duration_to, :energy_type, :id, :enterprise_id, :supplier, :contractNo
  belongs_to :enterprises
  has_many :bills
end
