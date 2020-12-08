class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many_attached :images
  belongs_to :facility
  belongs_to :scale
  belongs_to :category
  has_many :event_tag_relations, dependent: :destroy
  has_many :tags, through: :event_tag_relations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_many :users, through: :favorites


  with_options presence: true do
    validates :name
    validates :explanation
    validates :facility_id
    validates :scale_id
    validates :category_id
  end
   with_options numericality: { other_than: 1 } do
    validates :facility_id
    validates :scale_id
    validates :category_id
  end

  def save_tags(saveevent_tags)
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags = current_tags - saveevent_tags
    new_tags = saveevent_tags - current_tags

    old_tags.each do |old_name|
      self.tags.delete Tag.find_by(tag_name: old_name)
    end

    new_tags.each do |new_name|
      micropost_tag = Tag.find_or_create_by(tag_name: new_name)
      self.tags << micropost_tag
    end
  end

  def self.search(search)
    if search != ""
      Event.joins(:tags).where('name LIKE ? OR tag_name LIKE ?', "%#{search}%", "%#{search}%")
    else
      Event.all
    end
  end
end

