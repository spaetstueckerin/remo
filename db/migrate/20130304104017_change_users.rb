class ChangeUsers < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.rename :password, :password_digest
  end

  def down
    t.rename :password_digest, :password
  end
end
end
