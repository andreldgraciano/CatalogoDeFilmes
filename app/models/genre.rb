class Genre < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }

  has_many :directors
  has_many :movies
end
