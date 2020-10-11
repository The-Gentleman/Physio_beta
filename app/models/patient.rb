class Patient < ApplicationRecord
    has_many :exercises
    has_many :users, through: :exercises
    validates :diagnosis, presence: true
end
