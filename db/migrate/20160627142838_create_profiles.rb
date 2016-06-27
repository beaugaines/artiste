class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :blurb
      t.text :quotes, array: true, default: []
      t.string :location

      t.timestamps null: false
    end

    add_index :profiles, :user_id, unique: true
  end
end
