class RemoveBirthDateTypeInMovies < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :birth_date
  end
end
