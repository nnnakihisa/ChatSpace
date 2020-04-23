class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.integer :group_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
