# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(its: '12345678' , password: 'abbasisdbest' , email: 'abbas_10690@yahoo.com' ,
        first_name: 'Abbas',
        last_name: 'Hussain',
        user_type: 'A')
