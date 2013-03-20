class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.decimal :value
      t.decimal :consumption
      t.date :date
      t.date :period_from
      t.date :period_to

      t.timestamps
    end
  end
end
