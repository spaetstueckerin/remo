class Warning < ActiveRecord::Base
  attr_accessible :description, :event_source, :name, :periodicity
end
