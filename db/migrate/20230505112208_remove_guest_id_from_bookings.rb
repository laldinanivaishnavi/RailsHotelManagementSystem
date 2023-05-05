class RemoveGuestIdFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :guest_id, :integer
  end
end
