class MeterReading < ActiveRecord::Base
  attr_accessible :meter_id, :readingDate, :readingValue
end
