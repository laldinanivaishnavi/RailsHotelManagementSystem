class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.text :name
      t.integer :age
      t.string :gender
      t.string :phonenumber
      t.string :aadharnumber

      t.timestamps
    end
  end
end
