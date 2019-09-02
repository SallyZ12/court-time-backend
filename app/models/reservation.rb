class Reservation < ApplicationRecord

  belongs_to :court
  belongs_to :user

  has_one :club, through: :court


  validates :court_id, uniqueness: {scope: [:day, :hour]}


  validates :hour, :day, presence: true

end
