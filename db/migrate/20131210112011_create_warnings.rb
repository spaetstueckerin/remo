class CreateWarnings < ActiveRecord::Migration
  def change
    create_table :warnings do |t|
      t.string :name
      t.text :description
      t.integer :periodicity
      t.string :event_source

      t.timestamps
    end
  end
end
