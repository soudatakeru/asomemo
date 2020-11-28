class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :comments
  validates :nickname, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
