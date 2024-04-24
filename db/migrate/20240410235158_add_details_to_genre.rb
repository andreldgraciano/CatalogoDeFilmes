class AddDetailsToGenre < ActiveRecord::Migration[7.1]
  def change
    add_column :genres, :details, :text, default: 0
  end
end
