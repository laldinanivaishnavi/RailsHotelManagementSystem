class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :address
      t.string :postalcode
      t.string :city
      t.string :country
      t.integer :totalrooms
      t.string :phonenumber
      t.float :starrating

      t.timestamps
    end
  end
end
