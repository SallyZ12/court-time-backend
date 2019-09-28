class ClubSerializer < ActiveModel::Serializer
  attributes :id, :club_name, :location, :club_res

  has_many :courts


  def club_res
    self.object.reservations
  end

  # def club_res
  #   self.object.reservations.where('day' >=  Date.today)
  # end


end
