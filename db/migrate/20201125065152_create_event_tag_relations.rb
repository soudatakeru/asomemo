class CreateEventTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :event_tag_relations do |t|
      t.references :event, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
