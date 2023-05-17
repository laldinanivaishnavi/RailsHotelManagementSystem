class EmployeeRole < ApplicationRecord
    validates :title,:description,presence: true
    has_many :employees
    validates :title, length: { maximum: 50 }
    validates :description,length: { maximum: 500 }

end
