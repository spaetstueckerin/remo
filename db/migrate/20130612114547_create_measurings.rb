class CreateMeasurings < ActiveRecord::Migration
  def change
    create_table :measurings do |t|
      t.integer :enterprise_id
      t.datetime :dateFrom
      t.datetime :dateTo
      t.integer :location_id
      t.text :description

      t.timestamps
    end
  end
end
