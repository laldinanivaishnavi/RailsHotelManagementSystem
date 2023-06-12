class AddHotelToRoomtypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :roomtypes, :hotel, foreign_key: true
  end
end
