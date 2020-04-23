class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|

      t.timestamps
    end
  end
  has_many :users, through: :user_groups
end
