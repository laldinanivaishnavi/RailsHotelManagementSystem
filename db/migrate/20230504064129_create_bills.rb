class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.integer :room_charge
      t.integer :roomservice_charge
      t.integer :restaurant_charge
      t.integer :bar_charge
      t.integer :misc_charge
      t.integer :iflatecheckout_charge
      t.integer :total_charge
      t.datetime :payment_date
      t.string :payment_mode
      t.string :creditcard_number
      t.date :creditcard_expiry
      t.string :transaction_id
      t.string :transaction_status
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
