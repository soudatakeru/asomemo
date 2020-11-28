class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many_attached :images
  belongs_to :facility
  belongs_to :scale
  belongs_to :category
  has_many :event_tag_relations, dependent: :destroy
  has_many :tags, through: :event_tag_relations, dependent: :destroy
end
  # with_options presence: true do
  #   validates :name
  #   validates :explanation
  #   validates :facility_id
  #   validates :scale_id
  #   validates :category_id
    
  # end
  # with_options numericality: { other_than: 1 } do
  #   validates :facility_id
  #   validates :scale_id
  #   validates :category_id
  # end

