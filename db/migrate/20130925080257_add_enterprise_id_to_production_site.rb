class AddEnterpriseIdToProductionSite < ActiveRecord::Migration
  def change
    add_column :produktion_sites, :enterprise_id, :integer
  end
end
