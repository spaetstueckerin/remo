class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.integer :site_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
