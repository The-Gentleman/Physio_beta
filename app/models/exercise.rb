class Exercise < ApplicationRecord
    belongs_to :user
    belongs_to :patient
    validates :name, presence: true 
    validates :reps, presence: true, numericality: true

    # Exercise.exercises_with_most_reps
    # current_user.exercises.exercises_with_most_reps
    # I want to take exercises.reps in ascending order, and take the first exercise


end
