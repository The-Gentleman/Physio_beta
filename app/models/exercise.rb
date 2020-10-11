class Exercise < ApplicationRecord
    belongs_to :user
    belongs_to :patient
    validates :name, presence: true 
    validates :reps, presence: true, numericality: true

    scope :most_frequent_patient, -> {Exercise.joins(:patient).group(:patient_id).order("count(patient_id) desc").limit(1)}
end
