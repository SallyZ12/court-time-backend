# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1, username: 'Roger', email: "roger@email.come", password: "password", admin: "No")

Club.create(id:1, club_name: "West Side", location: "NY", number_courts: 2)

Court.create(id: 1, club_id: 1, court_number: 1, surface: 'grass')
Court.create(id: 2, club_id: 1, court_number: 2, surface: 'grass')

Rate.create(id:1, club_id: 1, description: 'prime', rate: 60)
Rate.create(id:2, club_id: 1, description: 'non-prime', rate: 50)


Reservation.create(id: 1, user_id: 1, court_id: 1, rate_id: 1, hour: '14', day: '2019-07-21')
