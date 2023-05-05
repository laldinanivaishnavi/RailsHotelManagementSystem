class AddBookingRefToGuests < ActiveRecord::Migration[6.0]
  def change
    add_reference :guests, :booking, null: false, foreign_key: true
  end
end
