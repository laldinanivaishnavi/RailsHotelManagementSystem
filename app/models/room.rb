class Room < ApplicationRecord
    belongs_to :roomtype
    belongs_to :hotel
end
