class CreateEnterpriseDataTypes < ActiveRecord::Migration
  def change
    create_table :enterprise_data_types do |t|
      t.string :end_type
      t.string :description_text
      t.string :unit
      t.integer :enterprise_data_id

      t.timestamps
    end
  end
end
