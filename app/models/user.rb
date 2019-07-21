class User < ApplicationRecord

  has_secure_password

  has_many :reservations
  has_many :club, through: :reservations
  has_many :courts, through: :reservations


  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  validates :password, presence: true, length: (minimum: 8)

  validates_inclusion_of :admin, :in => ["Yes", "No"]

end
