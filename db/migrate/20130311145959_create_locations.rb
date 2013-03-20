class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.decimal :squaremeter

      t.timestamps
    end
  end
end
