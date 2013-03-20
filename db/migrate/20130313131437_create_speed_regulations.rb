class CreateSpeedRegulations < ActiveRecord::Migration
  def change
    create_table :speed_regulations do |t|
      t.decimal :deliveryRate10
      t.decimal :deliveryRate20
      t.decimal :deliveryRate30
      t.decimal :deliveryRate40
      t.decimal :deliveryRate50
      t.decimal :deliveryRate60
      t.decimal :deliveryRate70
      t.decimal :deliveryRate80
      t.decimal :deliveryRate90
      t.integer :year_id

      t.timestamps
    end
  end
end
