class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :type
      t.text :description
      t.string :condition
      t.date :duration_from
      t.date :duration_to

      t.timestamps
    end
  end
end
