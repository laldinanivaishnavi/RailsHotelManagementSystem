class Room < ApplicationRecord
    belongs_to :roomtype
    belongs_to :hotel
    has_many :guests
    #has_one :booking
    validates :occupancy,:status,presence: true
    validates :occupancy,:status,length: { maximum: 15 }
end