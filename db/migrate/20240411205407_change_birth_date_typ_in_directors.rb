class ChangeBirthDateTypInDirectors < ActiveRecord::Migration[7.1]
  def change
    change_column :directors, :birth_date, :date
  end
end
