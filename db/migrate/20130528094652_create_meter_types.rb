class CreateMeterTypes < ActiveRecord::Migration
  def change
    create_table :meter_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
