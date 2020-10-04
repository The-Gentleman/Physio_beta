class Patient < ApplicationRecord
    has_many :exercises
    has_many :users, through: :exercises
    validates :name, :diagnosis, presence: true
end
