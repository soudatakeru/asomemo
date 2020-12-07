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
  
  def addsub(event)
    favorites.find_or_create_by(event_id: event.id)
  end

#登録解除メソッド
  def removesub(evenr)
    favorite = favorites.find_by(event_id: event.id)
    favorite.destroy if favorite
  end

#確認メソッド
  def checksub?(event)
    self.events.include?(event)
  end
  
end
