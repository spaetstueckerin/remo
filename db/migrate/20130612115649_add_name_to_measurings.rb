class AddNameToMeasurings < ActiveRecord::Migration
  def change
    add_column :measurings, :name, :string
  end
end
