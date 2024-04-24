class AddGenreToDirector < ActiveRecord::Migration[7.1]
  def change
    add_reference :directors, :genre, null: false, foreign_key: true
  end
end
