class BusinessDatum < ActiveRecord::Base
  attr_accessible :enterprise_id, :value, :year, :bdt_id
  belongs_to :enterprises
end
