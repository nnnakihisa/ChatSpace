class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name, null: false
      t.text :email, null: false
      t.string :password, null: false
      t.timestamps
    end
  end
end
