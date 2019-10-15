# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bobo = User.create(name: "Bojack", email: "bojack@bojack.com", password: "bobo")
juju = User.create(name: "Ju", email: "ju@ju.com", password: "juju")
popo = User.create(name: "Po", email: "po@po.com", password: "popo")


c1 = Country.create(country: "Japan")
c2 = Country.create(country: "Greece")
c3 = Country.create(country: "Portugal")

Place.create(name: "Tokyo", country_id: c1.id)
Place.create(name: "Athens", country_id: c2.id)
Place.create(name: "Lisbon", country_id: c3.id)

