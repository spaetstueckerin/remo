class ProductionDatum < ActiveRecord::Base
  attr_accessible :edt_id, :enterprise_id, :value, :year, :pdt_id
  belongs_to :enterprises
end
