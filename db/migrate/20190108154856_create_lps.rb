class CreateLps < ActiveRecord::Migration[5.2]
  def change
    create_table :lps do |t|

      t.timestamps
    end
  end
end
