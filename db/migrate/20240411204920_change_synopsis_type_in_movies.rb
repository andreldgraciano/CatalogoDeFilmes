class ChangeSynopsisTypeInMovies < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :synopsis, :text
  end
end
