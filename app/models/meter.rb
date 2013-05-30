class Meter < ActiveRecord::Base
  attr_accessible :description, :enterprise_id, :location_id, :meterType_id, :name
end
