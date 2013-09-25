class AddYearToBill < ActiveRecord::Migration
  def change
    add_column :bills, :year, :integer
  end
end
