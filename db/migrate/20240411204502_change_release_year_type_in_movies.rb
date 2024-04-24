class ChangeReleaseYearTypeInMovies < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :release_year, :text
  end
end
