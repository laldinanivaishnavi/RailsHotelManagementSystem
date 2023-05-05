class Booking < ApplicationRecord
  belongs_to :hotel
  #belongs_to :guest
  belongs_to :room
  belongs_to :user
  has_many :guest
end
