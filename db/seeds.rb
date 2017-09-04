# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jason = User.create(first_name: 'Jason', last_name: 'Bacani', email: 'jason@email.com', password: 'jason', password_confirmation: 'jason')
Post.create(title: 'Making Sense of Micronesia', authors: 'Francis X. Hezel', isbn13: '9780824836610', description: 'Good', user_id: jason.id)
