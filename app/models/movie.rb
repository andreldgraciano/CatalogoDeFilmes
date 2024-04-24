class Movie < ApplicationRecord
  has_one_attached :poster

  validates :title, uniqueness: { case_sensitive: false }

  belongs_to :genre
  belongs_to :director
end
