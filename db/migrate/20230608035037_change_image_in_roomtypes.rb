class ChangeImageInRoomtypes < ActiveRecord::Migration[6.0]
  def change
    change_column :roomtypes,:image,:binary
  end
end
