class Bill < ApplicationRecord
  belongs_to :booking
  validates :room_charge,:total_charge,:payment_date,:payment_mode,:transaction_id,:transaction_status,presence: true
end
