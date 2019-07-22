# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1, username: 'Roger', email: "roger@email.com", password: "password", admin: "No")
User.create(id: 2, username: 'Venus', email: "venus@email.com", password: "password", admin: "No")

Club.create(id: 1, club_name: "West Side", location: "NY", number_courts: 2)
Club.create(id: 2, club_name: "Rock", location: "NJ", number_courts: 2)

Court.create(id: 1, club_id: 1, court_number: 1, surface: 'grass')
Court.create(id: 2, club_id: 1, court_number: 2, surface: 'grass')
Court.create(id: 3, club_id: 2, court_number: 1, surface: 'clay')
Court.create(id: 4, club_id: 2, court_number: 2, surface: 'clay')

Rate.create(id:1, club_id: 1, description: 'prime', rate: 60)
Rate.create(id:2, club_id: 1, description: 'non-prime', rate: 50)
Rate.create(id:3, club_id: 2, description: 'prime', rate: 50)
Rate.create(id:4, club_id: 2, description: 'non-prime', rate: 40)

Reservation.create(id: 1, user_id: 1, court_id: 1, rate_id: 1, hour: '14', day: '2019-07-21')
Reservation.create(id: 2, user_id: 2, court_id: 3, rate_id: 3, hour: '8', day: '2019-07-22')
