class RemoveDetailsTypInGenres < ActiveRecord::Migration[7.1]
  def change
    remove_column :genres, :details
  end
end
