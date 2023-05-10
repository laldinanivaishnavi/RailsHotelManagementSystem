class Hotel < ApplicationRecord
    self.primary_key="id"
    validates :name,:address,:postalcode,:city,:country,:phonenumber,:starrating, presence: true
    belongs_to :owner
    has_many :employees
    has_many :rooms
    has_many :bookings
    has_many :guests
end
