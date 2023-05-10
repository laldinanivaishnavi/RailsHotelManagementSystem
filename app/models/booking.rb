class Booking < ApplicationRecord
  belongs_to :hotel
  #belongs_to :guest
  belongs_to :room
  belongs_to :user
  has_many :guests
  has_one :bill
  has_one :feedback
  validates :estarrival,:estdeparture,:checkin,:checkout,:numofadults,:numofchild,:bookingstatus,presence: true
end
