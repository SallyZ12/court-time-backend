class Reservation < ApplicationRecord

  belongs_to :court
  belongs_to :user

  has_one :club, through: :court

  # validates :hour, :day, presence: true

end
