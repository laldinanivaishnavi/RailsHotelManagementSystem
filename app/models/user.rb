class User < ApplicationRecord
    has_many :bookings
    validates :name,:password,presence: true
end
