class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user, null:false
      t.references :event, null:false
      t.timestamps null: false
    end
  end
end
