class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :address
      t.string :number
      t.integer :zip
      t.integer :city
      t.string :phone
      t.string :fax
      t.string :website
      t.string :country
      t.string :email

      t.timestamps
    end
  end
end
