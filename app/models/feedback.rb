class Feedback < ApplicationRecord
  belongs_to :booking
  validates :ratings,presence: true
end
