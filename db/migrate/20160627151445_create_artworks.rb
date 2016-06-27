class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.text :media, array: true, default: []
      t.integer :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
