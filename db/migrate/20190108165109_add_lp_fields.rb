class AddLpFields < ActiveRecord::Migration[5.2]
	def up
		add_column :lps, :name, :string
		add_column :lps, :year, :string
		add_column :lps, :genre, :string
	end
	def down
		remove_column :lps, :name
		remove_column :lps, :year
		remove_column :lps, :genre
	end
end
