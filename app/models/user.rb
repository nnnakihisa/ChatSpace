class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_groups
  has_many :messages
  has_many :groups, through: :user_groups
  validates :name, presence: true, uniqueness: true
end
