class User < ApplicationRecord
  has_many :events, dependent: :destroy
  validates :nickname, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
