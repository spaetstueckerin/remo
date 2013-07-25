class AddDetachToCompressedAirProductions < ActiveRecord::Migration
  def change
    add_column :compressed_air_productions, :detachablePart, :integer
    add_column :compressed_air_productions, :detachDuration, :integer
    add_column :compressed_air_productions, :detachTerm, :integer
  end
end
