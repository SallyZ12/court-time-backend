class User < ApplicationRecord
   # include ActiveModel::Validations
   # validates_with AdminValidator

  has_secure_password

  has_many :reservations
  has_many :club, through: :reservations
  has_many :courts, through: :reservations


  validates :first_name, :last_name, :username, :email, presence: true
  validates :username, :email, uniqueness: true

  validates :password, presence: true, length: {minimum: 8}


  validates :admin, presence: true, if: :admin_limit

  # validates :admin, if: Proc.new {|users| user.admin === "Yes"}

  # validates_uniqueness_of :admin, conditions: -> { where(admin:'Yes') }

      def admin_limit
        admin === "Yes"
      end
end
