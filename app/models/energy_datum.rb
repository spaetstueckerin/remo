class EnergyDatum < ActiveRecord::Base
  attr_accessible :edt_id, :enterprise_id, :value, :year, :endt_id
  belongs_to :enterprises
end
