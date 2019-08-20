class Court < ApplicationRecord

  belongs_to :club
  has_many :reservations
  has_many :users, through: :reservations

  validates :court_number, :surface, :prime, :non_prime, presence: true


  def prime_time
    return ['9:00 am', '10:00 am', '11:00 am', '6:00 pm', '7:00 pm', '8:00 pm', '9:00 pm', '10:00 pm']
  end

  def non_prime_time
    return ['12:00 pm', '1:00 pm', '2:00 pm', '3:00 pm', '4:00 pm', '5:00 pm']
  end


end
