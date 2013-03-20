class BusinessDataType < ActiveRecord::Base
  attr_accessible :description, :bd_type, :unit
  belongs_to :business_data
end
