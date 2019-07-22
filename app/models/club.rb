class Club < ApplicationRecord

  has_many :courts
  has_many :reservations
  has_many :players, through: :reservations
  belongs_to :rate

  validates :club_name, presence: true
  validates :location, presence: true
  validates :number_courts, presence: true

end
