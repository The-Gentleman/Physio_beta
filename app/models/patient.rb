class Patient < ApplicationRecord
    has_many :exercises
    has_many :users, through: :exercises
    validates :name, uniqueness: true
    validates :diagnosis, presence: true

    scope :patient_with_most_exercises, -> {order(reps: :asc).limit(3)}

end
