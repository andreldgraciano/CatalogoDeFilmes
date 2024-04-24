class ChangeReleaseYearTypeInMoviess < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :release_year, :date
  end
end
