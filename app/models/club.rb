class Club < ApplicationRecord

  has_many :courts
  has_many :reservations, through: :courts
  has_many :players, through: :reservations

  validates :club_name, presence: true
  validates :location, presence: true
  validates :number_courts, presence: true

end
