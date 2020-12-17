class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :events
  validates :nickname, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites, dependent: :destroy
  has_many :events, through: :favorites
  has_many :following_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :follower_relationships, foreign_key: 'following_id', class_name: 'Relationship', dependent: :destroy
  has_many :followers, through: :follower_relationships

  def addsub(event)
    favorites.find_or_create_by(event_id: event.id)
  end

  def removesub(_evenr)
    favorite = favorites.find_by(event_id: event.id)
    favorite.destroy if favorite
  end

  def checksub?(event)
    events.include?(event)
  end

  def self.guest
    find_or_create_by!(nickname: 'ゲスト', email: 'guest@example.com', profile: 'レクが得意', occupation:'介護士') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
