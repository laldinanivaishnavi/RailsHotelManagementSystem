class User < ApplicationRecord
    has_many :bookings
    has_secure_password
    validates :name,:password,presence: true,uniqueness: true
    validates :password ,length: { in: 6..20 }
end
