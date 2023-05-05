class Employee < ApplicationRecord
  belongs_to :hotel
  belongs_to :employee_role
end
