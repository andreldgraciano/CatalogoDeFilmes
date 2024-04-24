class AddDetailsTextToGenre < ActiveRecord::Migration[7.1]
  def change
    add_column :genres, :details, :text
  end
end
