class Court < ApplicationRecord

  belongs_to :club
  has_many :reservations
  has_many :users, through: :reservations

  validates :court_number, :surface, :prime, :non_prime, presence: true
  validates_uniqueness_of :court_number, scope: :club_id

  def hours
    return ['9:00 am', '10:00 am', '11:00 am', '12:00 pm', '1:00 pm', '2:00 pm']
  end

  def prime_time
    return ['9:00 am', '10:00 am', '11:00 am']
  end

  def non_prime_time
    return ['12:00 pm', '1:00 pm', '2:00 pm']
  end


end
