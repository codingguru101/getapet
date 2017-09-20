class ChangeAgeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :pets, :age_in_months, :age
  end
end
