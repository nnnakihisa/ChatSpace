class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, index: true
      t.text :email, null: false
      t.string :password, null: false
      t.timestamps null: false
    end
  end
end
