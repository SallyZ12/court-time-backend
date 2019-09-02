class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :court_id, :rate_type, :rate, :hour, :day, :confirmID, :reservation_club


  belongs_to :court
  belongs_to :user

  def reservation_club

    Reservation.all.each do |reservation|
      
     return reservation.club.club_name

    end
  end

end
