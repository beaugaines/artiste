class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :artwork, index: true, foreign_key: true
      t.string :file

      t.timestamps null: false
    end
  end
end
