class Roomtype < ApplicationRecord
    self.primary_key="id"
    has_one_attached :image
    attribute :image,:binary
    validates :image,:description,:facilities,presence: true
    has_many :rooms
end
