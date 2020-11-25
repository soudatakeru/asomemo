class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many_attached :images
  belongs_to :facility
  belongs_to :scale
  belongs_to :category
  with_options presence: true do
    validates :name
    validates :explanation
    #validates :images
    validates :facility_id
    validates :scale_id
    validates :category_id
  end
  with_options numericality: { other_than: 1 } do
    validates :facility_id
    validates :scale_id
    validates :category_id
  end
end
