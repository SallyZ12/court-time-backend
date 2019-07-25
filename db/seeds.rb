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

Court.create(id: 1, club_id: 1, court_number: 1, surface: 'grass', prime: 60, non_prime: 50)
Court.create(id: 2, club_id: 1, court_number: 2, surface: 'grass', prime: 60, non_prime: 50)
Court.create(id: 3, club_id: 1, court_number: 3, surface: 'hard', prime: 55, non_prime: 45)
Court.create(id: 4, club_id: 2, court_number: 2, surface: 'har-tru', prime: 50, non_prime:40)


Reservation.create(id: 1, user_id: 1, court_id: 1, hour: '12:00 pm', day: '2019-07-21', confirmID: 123456, rate_type: 'prime' )
Reservation.create(id: 2, user_id: 2, court_id: 3, hour: '8:00 am', day: '2019-07-22', confirmID: 234567, rate_type: 'prime')
Reservation.create(id: 3, user_id: 1, court_id: 2, hour: '1:00 pm' , day: '2019-07-24', confirmID: 345678, rate_type: 'non-prime')
Reservation.create(id: 4, user_id: 1, court_id: 1, hour: '4:00 pm', day: '2019-07-25', confirmID: 456789, rate_type: 'non-prime')
