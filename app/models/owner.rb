class Owner < ApplicationRecord
    validates :owned_hotels,:first_name,:last_name,:phonenumber,presence: true
    has_many :hotels
end
