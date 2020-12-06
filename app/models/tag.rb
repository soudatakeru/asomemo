class Tag < ApplicationRecord
  has_many :event_tag_relations, dependent: :destroy
  has_many :events, through: :event_tag_relations, dependent: :destroy
  validates :tag_name, uniqueness: true
end
