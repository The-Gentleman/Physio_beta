class ExercisesController < ApplicationController
    # project success requires index[DONE] and new

    def show 
        @exercise = Exercise.find(params[:id])
    end 

    def new 
        if params[:patient_id] && patient = Patient.find_by_id(params[:patient_id])
            # binding.pry
            @exercise = patient.exercises.build 
        else 
            @exercise = Exercise.new
        end 
    end 

    def create 
        raise params.inspect
    end 
    
    
    def index 
        if params[:patient_id]
            @exercises = Patient.find(params[:patient_id]).exercises
        else 
            @exercises = Exercise.all
        end 
    end 




    private
    def exercise_params
        params.require(:exercise).permit(:name, :reps, :user_id, :patient_id)
    end 
end
