class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :groupname, null: false
      t.text :member, null: false
      t.timestamps
    end
  end
end
