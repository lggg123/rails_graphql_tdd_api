class Artist < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :songs, dependent: :destroy
end
