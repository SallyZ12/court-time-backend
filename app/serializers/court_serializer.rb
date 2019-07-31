class CourtSerializer < ActiveModel::Serializer
  attributes :id, :club_id, :court_number, :surface, :prime, :non_prime, :prime_time, :non_prime_time

  belongs_to :club
  has_many  :reservations

end
