class ChangeReleaseYearToIntegerInMovies < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :release_year, :integer
  end
end
