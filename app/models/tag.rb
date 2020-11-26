class Tag < ApplicationRecord
  has_many :event_tag_relations
  has_many :events, through: :event_tag_relations

  validates :tagname, uniqueness: true
end
