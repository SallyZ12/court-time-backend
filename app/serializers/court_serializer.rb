class CourtSerializer < ActiveModel::Serializer
  attributes :id, :club_id, :court_number, :surface, :prime, :non_prime

  belongs_to :club
  has_many  :reservations
  
end
