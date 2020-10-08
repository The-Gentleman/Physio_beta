class ExercisesController < ApplicationController

    def show 
        @exercise = Exercise.find(params[:id])
    end 

    def index 
        # binding.pry
        # if current_user.exercises.empty?
        #     flash[:message] = "You havent added any exercises"
        #     redirect_to patient_exercises_path
        # end 
        if params[:patient_id] && patient = Patient.find_by_id(params[:patient_id])
            @exercises = Patient.find(params[:patient_id]).exercises
        else 
            @exercises = Exercise.all
        end 
    end 

    def new 
        if params[:patient_id] && patient = Patient.find_by_id(params[:patient_id])
            @exercise = patient.exercises.build 
        else 
            @exercise = Exercise.new
        end 
    end 

    def create 
        @exercise = Exercise.create(exercise_params)
        if @exercise.save
            redirect_to patient_exercises_path(@exercise.patient.id)
        else 
            render :new
        end 
    end 

    def edit 
        @exercise = Exercise.find(params[:id])
    end 

    def update 
        @exercise = Exercise.find_by(id: params[:id])
        if @exercise.update(exercise_params)
            redirect_to exercise_path(@exercise)
        else
            render :edit
        end
    end 
    # eventually add a destroy action

    
    private
    def exercise_params
        params.require(:exercise).permit(:name, :reps, :user_id, :patient_id)
    end 
end
