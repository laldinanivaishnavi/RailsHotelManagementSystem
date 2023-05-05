class AddOwnerRefToHotels < ActiveRecord::Migration[6.0]
  def change
    add_reference :hotels, :owner, null: false, foreign_key: true
  end
end
