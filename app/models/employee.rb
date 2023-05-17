class Employee < ApplicationRecord
  belongs_to :hotel
  belongs_to :employee_role
  validates :first_name,:last_name,:dob,:phonenumber,:email,:password,:salary,presence: true
  validates :first_name,:last_name,length: { maximum: 20 }
  validates :phonenumber, length: {maximum: 10}
  validates :password,length: { in: 6..20 }
  validates :salary,numericality: true
end
