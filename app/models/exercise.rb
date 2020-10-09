class Exercise < ApplicationRecord
    belongs_to :user
    belongs_to :patient
    validates :name, presence: true 
    validates :reps, presence: true, numericality: true

    # scope method
    # I want to write a method that displays the top 3 patients with the highest number of exercises (alphabetically?)
    scope :most_frequent_patient, -> {Exercise.joins(:patient).group(:patient_id).order("count(patient_id) desc").limit(3)}
end
