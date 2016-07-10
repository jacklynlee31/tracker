class Trip < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :city, presence: true
  validates :country, presence: true

  geocoded_by :city
  after_validation :geocode
end
