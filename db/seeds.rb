# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jason = User.create(first_name: 'Jason', last_name: 'Bacani', email: 'jason@email.com', password: 'jason', password_confirmation: 'jason')
Post.create([{title: 'Microsoft Access 2013: Comprehensive', authors: 'Pratt & Last', isbn10: '1285168968', isbn13: '9781285168968', description: 'Good', user_id: jason.id},{title: "Writing your way through College: a Student's Guide", authors: 'Fontaine and Smith', isbn10: '0867095911', isbn13: '9780867095913', description: 'Good', user_id: jason.id},{title: 'Philosophy of Religion: an Anthology', authors: 'Rea and Pojman', isbn10: '1285197321', isbn13: '9781285197326', description: 'Good', user_id: jason.id}])
