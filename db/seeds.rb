# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Creature.destroy_all
Creature.create({name: "Darth Vader", description: "Father of Luke"})
Creature.create({name: "Luke", description: "Jedi Noob"})
Creature.create({name: "Yoda", description: "Jedi Master"})
Creature.create({name: "Chewbacca", description: "Walking Rug"})
Creature.create({name: "Boba Fett", description: "Bad Dude"})
Creature.create({name: "R2D2", description: "Droid"})
