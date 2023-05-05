class Guest < ApplicationRecord
    #enum gender: [ :male, :female, :not_sure, :prefer_not_to_disclose ]
    belongs_to :booking
end
