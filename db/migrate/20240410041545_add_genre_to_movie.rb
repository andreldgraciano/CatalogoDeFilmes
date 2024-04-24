class AddGenreToMovie < ActiveRecord::Migration[7.1]
  def change
    add_reference :movies, :genre, null: false, foreign_key: true
  end
end
