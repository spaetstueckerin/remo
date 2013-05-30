class CreateMeters < ActiveRecord::Migration
  def change
    create_table :meters do |t|
      t.integer :enterprise_id
      t.integer :location_id
      t.integer :meterType_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
