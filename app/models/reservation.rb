class Reservation < ApplicationRecord

  belongs_to :court
  belongs_to :user
  belongs_to :rate
  belongs_to :club, through: :courts

  validates :hour, :day, presence: true

end
