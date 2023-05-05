class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :estarrival
      t.datetime :estdeparture
      t.datetime :checkin
      t.datetime :checkout
      t.integer :numofadults
      t.integer :numofchild
      t.text :specialconcern
      t.text :bookingstatus
      t.references :hotel, null: false, foreign_key: true
      #t.references :guest, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
