class AddAddressToProduktionSite < ActiveRecord::Migration
  def change
    add_column :produktion_sites, :address, :string
    add_column :produktion_sites, :number, :integer
    add_column :produktion_sites, :zip, :integer
    add_column :produktion_sites, :city, :string
  end
end
