class ChangeNameInGuests < ActiveRecord::Migration[6.0]
  def change
    change_column :guests, :name, :string
  end
end
