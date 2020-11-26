class EventsTag

  include ActiveModel::Model
  attr_accessor :name, :explanation, :facility_id, :scale_id, :category_id, :volunteer, :tagname, :user_id


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
  
  
  def save
    event = Event.create(name: name, explanation: explanation, facility_id: facility_id, scale_id: scale_id, category_id: category_id, volunteer: volunteer,user_id: user_id)
    tag = Tag.where(tagname: tagname).first_or_initialize
    tag.save

    EventTagRelation.create(event_id: event.id, tag_id: tag.id)
  end

end