class ProductionDatum < ActiveRecord::Base
  attr_accessible :enterprise_id, :year, :paperUsage, :inkUsage, :orders, :utilities, :clients
  belongs_to :enterprises
end
