class AddConsumerToDemand < ActiveRecord::Migration
  def change
    add_column :compressed_air_demands, :compressed_air_consumer_id, :integer
  end
end
