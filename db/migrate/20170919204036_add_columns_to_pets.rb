class AddColumnsToPets < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :shelter_id, :string
    add_column :pets, :shelter_pet_id, :string
    add_column :pets, :sex, :string
    add_column :pets, :size, :string
    add_column :pets, :status, :string
    add_column :pets, :contact, :string
  end
end
