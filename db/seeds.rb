# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "dan")
MonsterTemplate.create(name: "Hare", lifespan: 400, lif: 50, pow: 130, int: 70, ski: 100, spd: 140, def: 40, img: "184.jpg")
MonsterTemplate.create(name: "Suezo", lifespan: 450, lif: 80, pow: 120, int: 170, ski: 130, spd: 90, def: 100, img: "254.jpg")
MonsterTemplate.create(name: "Mocchi", lifespan: 450, lif: 110, pow: 100, int: 120, ski: 140, spd: 150, def: 130, img: "278.jpg")
MonsterTemplate.create(name: "Zuum", lifespan: 450, lif: 80, pow: 120, int: 170, ski: 130, spd: 90, def: 100, img: "115.jpg")
