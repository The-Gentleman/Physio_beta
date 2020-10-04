class Exercise < ApplicationRecord
    belongs_to :user
    belongs_to :patient

    # TO DO:
    # CREATE VALIDATIONS FOR NAME AND REPS

end
