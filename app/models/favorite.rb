class Favorite < ActiveRecord::Base
  attr_accessible :name, :category, :address, :phone_number
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user

  validates_presence_of :name, :address
end