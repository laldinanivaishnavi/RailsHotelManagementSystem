class User < ApplicationRecord
    has_many :bookings
    has_secure_password
   
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
    validates :username,presence: true,uniqueness: true
    validates :password_digest, presence: true
    validates :role,presence: true
    validates :email, presence: true, length: { minimum: 10, maximum: 255 },format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6, maximum: 20 }

end
