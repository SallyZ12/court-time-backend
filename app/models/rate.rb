class Rate < ApplicationRecord

  has_many: clubs

  validates_inclusion_of :description, :in => ['prime', 'non-prime']
  validates :rate, presence: true

end
