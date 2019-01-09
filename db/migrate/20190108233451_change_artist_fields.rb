class ChangeArtistFields < ActiveRecord::Migration[5.2]
  def up
    rename_column :artists, :bio, :description
  end
  def down
    rename_column :artists, :description, :bio
  end
end
