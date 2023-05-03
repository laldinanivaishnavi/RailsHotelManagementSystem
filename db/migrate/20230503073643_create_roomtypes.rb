class CreateRoomtypes < ActiveRecord::Migration[6.0]
  def change
    create_table :roomtypes do |t|
      t.text :image
      t.text :description
      t.text :facilities

      t.timestamps
    end
  end
end
