class ChangeColorColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :pets, :color, :mix
  end
end
