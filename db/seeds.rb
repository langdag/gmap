# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
store_list =[ 
	["Spain", "Zara", "Paseo de la Castellana 79", "28020 Madrid"], 
	["France", "Le Géant des Beaux Arts Paris 11", "166 Rue de la Roquette", "75011 Paris"],
	["Germany", "REWE", "Westring 42", "34127 Kassel"]
]

store_list.each do |country, name, address, city|
	Store.create(country: country, name: name, address: address, city: city)
end