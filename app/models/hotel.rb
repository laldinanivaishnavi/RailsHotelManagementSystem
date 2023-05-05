class Hotel < ApplicationRecord
    self.primary_key="id"
    #validates :name,:city,:phonenumber,:starrating, presence: true
    belongs_to :owner
    has_many :employees
end
