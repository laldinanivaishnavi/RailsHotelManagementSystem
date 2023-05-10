class AddRoomRefInGuests < ActiveRecord::Migration[6.0]
  def change
    add_reference :guests, :room, foreign_key: true
  end
end
