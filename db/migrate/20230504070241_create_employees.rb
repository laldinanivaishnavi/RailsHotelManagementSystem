class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.string :phonenumber
      t.string :email
      t.string :password
      t.integer :salary
      t.references :hotel, null: false, foreign_key: true
      t.references :employee_role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
