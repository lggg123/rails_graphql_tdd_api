class Song < ApplicationRecord
  belongs_to :artist
  validates :title, uniqueness: true, presence: true
end
