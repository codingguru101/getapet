class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :color
      t.string :image_url
      t.integer :age_in_months
      t.text :description

      t.timestamps
    end
  end
end
