class RemoveReleaseYearFromMovies < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :release_year, :integer
  end
end
