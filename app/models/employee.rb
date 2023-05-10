class Employee < ApplicationRecord
  belongs_to :hotel
  belongs_to :employee_role
  validates :first_name,:last_name,:dob,:phonenumber,:email,:password,:salary,presence: true
end
