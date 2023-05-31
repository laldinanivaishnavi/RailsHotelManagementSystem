class Booking < ApplicationRecord
  belongs_to :hotel
  #belongs_to :guest
  belongs_to :room
  belongs_to :user
  has_many :guests
  has_one :bill
  has_one :feedback
  validates :estarrival,:estdeparture,:checkin,:checkout,:numofadults,:numofchild,:bookingstatus,presence: true
  validates :estarrival, date: { before: :estdeparture}
  validates :checkin, date: { before: :checkout}
  validates :numofadults,:numofchild,numericality: { only_integer: true }
  accepts_nested_attributes_for :guests
end
