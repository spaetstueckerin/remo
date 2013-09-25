class ProduktionSite < ActiveRecord::Base
  attr_accessible :description, :name, :address, :number, :zip, :city, :enterprise_id
end
