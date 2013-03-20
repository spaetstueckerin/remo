class CompressedAirDistribution < ActiveRecord::Base
  attr_accessible :addons, :branchline, :branchlineL, :capacity, :compressedAirDryerType, :compressor_id, :leak, :location_id, :mainline, :mainlineL, :manufacturer, :material, :pressureLoss, :stubline, :stublineL, :volume, :yearOfManufacturing
end
