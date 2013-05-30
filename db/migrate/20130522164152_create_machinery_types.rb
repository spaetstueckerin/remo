class CreateMachineryTypes < ActiveRecord::Migration
  def change
    create_table :machinery_types do |t|
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
