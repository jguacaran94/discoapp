class AddArtistFields < ActiveRecord::Migration[5.2]
	def up
		add_column :artists, :name, :string
		add_column :artists, :bio, :text
	end
	def down
		remove_column :artists, :name
		remove_column :artists, :bio
	end
end
