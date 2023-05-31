class AddDefaultToBookingStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings,:bookingstatus,:string,default: "pending"
  end
end
