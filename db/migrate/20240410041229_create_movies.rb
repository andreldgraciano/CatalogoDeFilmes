class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_year
      t.string :synopsis
      t.string :country
      t.integer :film_runtime

      t.timestamps
    end
  end
end
