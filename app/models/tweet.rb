class Tweet < ApplicationRecord

  validates :title , presence: true
  validates :text, presence: true

  geocoded_by :keyword
  after_validation :geocode

  belongs_to :user
  has_one_attached :image

end
