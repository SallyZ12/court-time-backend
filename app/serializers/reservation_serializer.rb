class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :court_id, :rate_type, :rate, :hour, :day, :confirmID, :reservation_club, :res_court_surface, :res_court_number


  belongs_to :court
  belongs_to :user


  def reservation_club
      self.object.club.club_name
  end

  def res_court_surface
    self.object.court.surface
  end

  def res_court_number
    self.object.court.court_number
  end


end
