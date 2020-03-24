# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create name: 'Pedro', status: :active, kind: :user, email: 'user@teste.com', password: 123456
User.create name: 'Lucas', status: :active, kind: :user, email: 'user2@teste.com', password: 123456
User.create name: 'João', status: :active, kind: :manager, email: 'manager@teste.com', password: 123456