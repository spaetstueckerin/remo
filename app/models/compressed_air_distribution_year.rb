class CompressedAirDistributionYear < ActiveRecord::Base
  attr_accessible :leak, :pressureLoss, :year_id, :compressor_id
end
