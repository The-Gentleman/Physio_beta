class ExercisesController < ApplicationController

    def index 
        # raise params.inspect
        # if nested
        if params[:patient_id]
            # load only the exercises nested under this patient
            @exercises = Exercise.find_by(patient_id: params[:patient_id]) 
        else 
            # load all the exercises
            @exercises = current_user.exercises
        end 
    end 
    
    private
    def exercise_params
        params.require(:exercise).permit(:name, :reps, :user_id, :patient_id)
    end 
end
