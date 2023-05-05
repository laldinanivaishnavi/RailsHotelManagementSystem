class AddHotelAndRoomtypeRefToRooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :roomtype, null: false, foreign_key: true
    add_reference :rooms, :hotel, null: false, foreign_key: true
  end
end
