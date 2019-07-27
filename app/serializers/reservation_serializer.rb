class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :court_id, :rate_type, :rate, :hour, :day, :confirmID

  belongs_to :court
  belongs_to :user

end
