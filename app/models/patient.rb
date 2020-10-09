class Patient < ApplicationRecord
    has_many :exercises
    has_many :users, through: :exercises
    validates :name, uniqueness: true
    validates :diagnosis, presence: true

    
end
