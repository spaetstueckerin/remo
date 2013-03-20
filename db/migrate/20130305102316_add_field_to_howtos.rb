class AddFieldToHowtos < ActiveRecord::Migration
  def change
    add_column :howtos, :user_id, :integer
  end
end
