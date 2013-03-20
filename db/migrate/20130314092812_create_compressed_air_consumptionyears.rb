class CreateCompressedAirConsumptionyears < ActiveRecord::Migration
  def change
    create_table :compressed_air_consumptionyears do |t|
      t.decimal :verbrauch
      t.integer :year_id

      t.timestamps
    end
  end
end
