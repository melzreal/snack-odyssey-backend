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

p1 = Place.create(name: "Tokyo", country_id: c1.id)
p2 = Place.create(name: "Osaka", country_id: c1.id)

p3 = Place.create(name: "Athens", country_id: c2.id)
p4 = Place.create(name: "Lisbon", country_id: c3.id)


Blog.create(name: "Bojack's adventures", user_id: bobo.id)
Blog.create(name: "Ju Goes around", user_id: juju.id)
Blog.create(name: "Popo the Boss", user_id: popo.id)


Post.create(blog_id: 1, title: "Bo goes Tokyo" , body: "There were pork buns everywhere and Akihabara was a blast!")
Post.create(blog_id: 1, title: "Bo in Frankfurt" , body: "It was just a stopover didnt even get a shcnitzel!")
Post.create(blog_id: 1, title: "Bo in Nuremberg" , body: "Such a cool medieval city, with some good bakeries")
Post.create(blog_id: 1, title: "Bo goes Rome" , body: "Had the best gnocchi of my life there, with courgette flowers and ham! YOM")
Post.create(blog_id: 1, title: "Bo goes Venice" , body: "The biggest Tiramisu I've ever seen! And of course Venice is beautiful too, very good fish restaurants!")
Post.create(blog_id: 1, title: "Bo in Ho Chin Minh" , body: "Delicious coconut prawn pancakes! Definitely do the motorbike food tour.")


