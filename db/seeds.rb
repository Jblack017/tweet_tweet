# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bird.destroy_all
Tree.destroy_all

redwood = Tree.create(name: 'Redwood')

condor = Bird.create(name:'Condor', wing_span: 9, tree_id: redwood.id)
dodo = Bird.create(name:'Dodo', wing_span: 2)
caudipteryx = Bird.create(name:'Caudipteryx', wing_span: 1)


