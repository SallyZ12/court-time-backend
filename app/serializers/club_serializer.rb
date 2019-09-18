class ClubSerializer < ActiveModel::Serializer
  attributes :id, :club_name, :location, 

  has_many :courts


  # def club_res
  #   self.object.reservations
  # end


end
