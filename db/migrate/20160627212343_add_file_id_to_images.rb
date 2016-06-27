class AddFileIdToImages < ActiveRecord::Migration
  def up
    remove_column :images, :file
    add_column :images, :file_id, :string
  end

  def down
    remove_column :images, :file_id
    add_column :images, :file, :string
  end
end
