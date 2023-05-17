class Hotel < ApplicationRecord
    self.primary_key="id"
    validates :name,:address,:postalcode,:city,:country,:phonenumber,:starrating, presence: true
    belongs_to :owner
    has_many :employees
    has_many :rooms
    has_many :bookings
    has_many :guests
    validates :phonenumber,length: { maximum: 10 }
    validates :starrating,comparison: { less_than_or_equal_to: 5.0 }
    validates :totalrooms,numericality: {only_integer: true}
end
