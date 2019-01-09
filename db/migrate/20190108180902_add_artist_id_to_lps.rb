class AddArtistIdToLps < ActiveRecord::Migration[5.2]
  def up
    add_column :lps, :artist_id, :integer
  end
  def down
    remove_column :lps, :artist_id
  end
end
