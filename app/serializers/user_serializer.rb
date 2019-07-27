class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :admin

  has_many :reservations
end
