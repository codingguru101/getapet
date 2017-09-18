# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

data = CSV.read(
		"/Users/seanmcd/desktop/wyncode/getapet/db/seans_data.csv",
		{ encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}
	)


hashed_data = data.map { |item| item.to_hash }
keys = [
	:name,
	:species,
	:color,
	:image_url,
	:age_in_months,
	:description
]
hashed_data.each do |item|
	new_hash = Hash[keys.zip(keys.map{|key| item.fetch(key)})]
	Pet.create(item)
end
