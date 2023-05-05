class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.text :owned_hotels
      t.integer :numofhotels
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :phonenumber
      t.string :email

      t.timestamps
    end
  end
end
