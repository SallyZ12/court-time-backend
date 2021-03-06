class Club < ApplicationRecord

  has_many :courts
  has_many :reservations, through: :courts

  has_many :users, through: :reservations

  validates :club_name, presence: true
  validates :location, presence: true
  
end
