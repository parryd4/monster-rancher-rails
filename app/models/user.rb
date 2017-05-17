class User < ApplicationRecord
  has_many :monsters
  validates_length_of :monsters, maximum: 10
end
