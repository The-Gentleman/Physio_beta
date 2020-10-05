class ExercisesController < ApplicationController

    def new
        if params[:patient_id]
            @exercise = Exercise.new
        else 
            redirect_to patients_path
        end 
        #  binding.pry
    end 
    # check if patient id is in params 

    private
    def exercise_params
        params.require(:exercise).permit(:name, :reps, :user_id, :patient_id)
    end 
end
