class Owner < ApplicationRecord
    validates :owned_hotels,:first_name,:last_name,:phonenumber,presence: true
    has_many :hotels
    validates :first_name,:last_name,length: { maximum: 20 }
    validates :phonenumber,length: { maximum: 10 }
    validates :age,numericality: {only_integer: true}
end
