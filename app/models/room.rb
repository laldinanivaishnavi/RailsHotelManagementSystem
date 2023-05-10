class Room < ApplicationRecord
    belongs_to :roomtype
    belongs_to :hotel
    has_many :guests
    has_one :booking
    validates :occupancy,:status,presence: true
end