class Roomtype < ApplicationRecord
    self.primary_key="id"
    validates :image,:description,:facilities,presence: true
    has_many :rooms
end
