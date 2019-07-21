class Reservation < ApplicationRecord

  belongs_to :court
  belongs_to :user
  belongs_to :rate
  has_many :clubs, through: :court

  # validates :hour, :day, presence: true

end
