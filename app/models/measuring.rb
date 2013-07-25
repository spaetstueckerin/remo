class Measuring < ActiveRecord::Base
  attr_accessible :dateFrom, :dateTo, :description, :enterprise_id, :location_id, :name, :mnumber, :tsv_file
end
