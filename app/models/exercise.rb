class Exercise < ApplicationRecord
    belongs_to :user
    belongs_to :patient
    validates :name, presence: true 
    validates :reps, presence: true, numericality: true
    # TO DO:
    # CREATE VALIDATIONS FOR NAME AND REPS

end
