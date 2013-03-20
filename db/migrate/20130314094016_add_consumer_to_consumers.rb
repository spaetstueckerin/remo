class AddConsumerToConsumers < ActiveRecord::Migration
  def change
    add_column :compressed_air_consumptionyears, :compressed_air_consumer_id, :integer
  end
end
