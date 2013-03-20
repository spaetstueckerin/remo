class CreateEnterpriseData < ActiveRecord::Migration
  def change
    create_table :enterprise_data do |t|
      t.decimal :value
      t.integer :year
      t.integer :enterprise_id
      t.integer :endt_id

      t.timestamps
    end
  end
end
