class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :user
      t.string :event
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :image_ref

      t.timestamps null: false
    end
  end
end
