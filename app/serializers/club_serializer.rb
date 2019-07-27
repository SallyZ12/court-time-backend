class ClubSerializer < ActiveModel::Serializer
  attributes :id, :club_name, :location, :number_courts

  has_many :courts
end
