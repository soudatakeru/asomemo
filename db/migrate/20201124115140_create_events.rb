class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :user,     null: false, foreign_key: true
      t.string :name,         null: false
      t.text :explanation,    null: false
      t.integer :facility_id, null: false
      t.integer :scale_id,    null: false
      t.integer :category_id, null: false
      t.text :volunteer
      t.timestamps
    end
  end
end
