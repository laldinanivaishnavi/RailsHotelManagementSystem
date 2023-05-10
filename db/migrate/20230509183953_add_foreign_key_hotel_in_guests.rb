class AddForeignKeyHotelInGuests < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :guests, :hotels
  end
end
