class CreateProduktionSites < ActiveRecord::Migration
  def change
    create_table :produktion_sites do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
