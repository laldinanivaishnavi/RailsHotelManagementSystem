class Guest < ApplicationRecord
    #enum gender: [ :male, :female, :not_sure, :prefer_not_to_disclose ]
    belongs_to :booking
    belongs_to :hotel
    validates :name,:phonenumber,:aadharnumber,presence: true
    has_one :room
end
