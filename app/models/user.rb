class User < ApplicationRecord
  has_many :groups, through: :user_groups
end
