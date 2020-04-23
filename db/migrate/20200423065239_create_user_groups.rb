class CreateUserGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :user_groups do |t|
      t.integer :group_id, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
