class EmployeeRole < ApplicationRecord
    validates :title,:description,presence: true
    has_many :employees
end
