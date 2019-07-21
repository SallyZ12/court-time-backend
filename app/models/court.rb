class Court < ApplicationRecord

  belongs_to :club
  has_many :reservations
  has_many :users, through: :reservations

  validates: surface, presence: true
  validates: court_number, presence: true

end
