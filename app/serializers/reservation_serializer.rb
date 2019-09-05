class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :court_id, :rate_type, :rate, :hour, :day, :confirmID, :reservation_club


  belongs_to :court
  belongs_to :user

  def reservation_club

    Reservation.all.each do |reservation|
      # binding.pry
      Club.all.each do |club|
        club.courts.each do |court|
      #    if reservation.court_id === court.id
           # binding.pry
        # can also use:  reservation.club.club_name provides club_name
          court.club.club_name
          end
        end
      end
    end


end
