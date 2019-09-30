class Court < ApplicationRecord

  belongs_to :club
  has_many :reservations
  has_many :users, through: :reservations

  validates :court_number, :surface, :prime, :non_prime, presence: true
  validates_uniqueness_of :court_number, scope: :club_id

  

end
