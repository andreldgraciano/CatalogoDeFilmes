class AddReleaseYearToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :release_year, :date, default: '1990-03-15'
  end
end
