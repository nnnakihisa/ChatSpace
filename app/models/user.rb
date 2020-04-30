class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :group_users
  has_many :groups, through: :group_users
  has_many :messages
  # validates :name, presence: true, uniqueness: true
  # ↑一個前のカリキュラムで追加したやつやけど次のカリキュラムでは存在が無かった
end
