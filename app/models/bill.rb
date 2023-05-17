class Bill < ApplicationRecord
  belongs_to :booking
  validates :room_charge,:total_charge,:payment_date,:payment_mode,:transaction_id,:transaction_status,presence: true
  validates :room_charge,:total_charge, numericality: true
  validates :creditcard_number,:creditcard_expiry,presence: true ,if: :pay_with_card?
  def pay_with_card?
    payment_mode=="card"
  end
end
