class ClubSerializer < ActiveModel::Serializer
  attributes :id, :club_name, :location

  has_many :courts
end
