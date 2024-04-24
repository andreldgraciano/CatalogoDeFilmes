class ChangeBirthDateTypeInDirectors < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :birth_date, :date
  end
end
