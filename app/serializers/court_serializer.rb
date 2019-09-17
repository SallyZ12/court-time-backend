class CourtSerializer < ActiveModel::Serializer
  attributes :id, :club_id, :court_number, :surface, :prime, :non_prime, :court_res

  belongs_to :club
  has_many  :reservations

  def court_res
    self.object.reservations
  end

end
