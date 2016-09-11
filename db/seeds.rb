# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Camper.create(fcc_username: "kaileeagray", points: 25234320)
# Camper.create(fcc_username: "JarSanYou", points: 25000)
# Camper.create(fcc_username: "emjayess", points: 10909000)
# Camper.create(fcc_username: "chriswinge", points: 13289123)
["gregoryclark", "pevelynnguyen", "Awol", "michaelkoska", "neilsc"].each do |fcc|
  Camper.create(fcc_username: fcc)
end
