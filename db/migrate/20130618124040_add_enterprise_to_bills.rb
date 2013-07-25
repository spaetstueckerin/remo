class AddEnterpriseToBills < ActiveRecord::Migration
  def change
    add_column :bills, :enterpriseId, :integer
    add_column :bills, :meterId, :integer
  end
end
