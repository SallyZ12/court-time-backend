class User < ApplicationRecord

  has_secure_password

  has_many :reservations
  has_many :clubs, through: :reservations
  has_many :courts, through: :reservations


  validates :first_name, :last_name, :username, :email, presence: true
  validates :username, :email, uniqueness: true

  validates :password, presence: true, length: {minimum: 8}



end
