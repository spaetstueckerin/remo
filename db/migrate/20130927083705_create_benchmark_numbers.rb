class CreateBenchmarkNumbers < ActiveRecord::Migration
  def change
    create_table :benchmark_numbers do |t|
      t.float :number
      t.integer :enterprise_id

      t.timestamps
    end
  end
end
