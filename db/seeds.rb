# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Roger', last_name: 'Federer', username: 'RF', email: "roger@email.com", password: "password", admin: "No")
user2 = User.create(first_name: 'Venus', last_name: 'Williams', username: 'VW', email: "venus@email.com", password: "password", admin: "No")

club1 = Club.create(club_name: "West Side", location: "NY")
club2 = Club.create(club_name: "Delray Beach Tennis Center", location: "Delray Beach, Fl")

court1 = Court.create(club_id: 1, court_number: 1, surface: 'grass', prime: 60, non_prime: 50)
court2 = Court.create(club_id: 1, court_number: 2, surface: 'grass', prime: 60, non_prime: 50)
court3 = Court.create(club_id: 1, court_number: 3, surface: 'hard', prime: 55, non_prime: 45)
court4 = Court.create(club_id: 2, court_number: 2, surface: 'har-tru', prime: 50, non_prime: 40)


# reservation1 = Reservation.create(user_id: 1, court_id: 1, hour: '12:00 pm', day: '2019-7-21', confirmID: 123456, rate_type: 'prime', rate:60 )
# reservation2 = Reservation.create(user_id: 2, court_id: 3, hour: '8:00 am', day: '2019-7-22', confirmID: 234567, rate_type: 'prime', rate: 55)
# reservation3 = Reservation.create(user_id: 1, court_id: 2, hour: '1:00 pm', day: '2019-9-10', confirmID: 345678, rate_type: 'non-prime', rate: 50)
# reservation4 = Reservation.create(user_id: 1, court_id: 4, hour: '4:00 pm', day: '2019-8-15', confirmID: 456789, rate_type: 'non-prime', rate: 40)
# reservation5 = Reservation.create(user_id: 2, court_id: 4, hour: '6:00 pm', day: '2019-8-16', confirmID: 999999, rate_type: 'non-prime', rate: 40)
