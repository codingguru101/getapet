json.extract! pet, :id, :name, :species, :color, :image_url, :age_in_months, :description, :created_at, :updated_at
json.url pet_url(pet, format: :json)
