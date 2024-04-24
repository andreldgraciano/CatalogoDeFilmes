class RemoveDetailsFromGenre < ActiveRecord::Migration[7.1]
  def change
    remove_column :genres, :details, :text
  end
end
