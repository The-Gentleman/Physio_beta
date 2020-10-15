class ExercisesController < ApplicationController
    before_action :find_exercises, only: [:show, :edit]
    before_action :redirect_if_not_current_user_patient, only: [:index, :new]

    def show 
    end 

    def index 
        if params[:patient_id] && @patient = Patient.find_by_id(params[:patient_id]) 
            @exercises = Patient.find(params[:patient_id]).exercises
        else 
            redirect_to patients_path
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
        @exercise = Exercise.find_or_create_by(exercise_params)
        if @exercise.save 
            redirect_to patient_exercises_path(@exercise.patient.id)
        else 
            render :new
        end 
    end 

    def edit 
    end 

    def update 
        @exercise = Exercise.find_by(id: params[:id])
        if @exercise.update(exercise_params)
            redirect_to exercise_path(@exercise)
        else
            render :edit
        end
    end 

    def all_exercises
        @exercises = Exercise.all
    end 

    def destroy
        patient_id = Exercise.find(params[:id]).patient.id
        Exercise.find(params[:id]).delete
        redirect_to patient_exercises_path(patient_id)
    end 
    
    
    private
    def exercise_params
        params.require(:exercise).permit(:name, :reps, :user_id, :patient_id)
    end 

    def find_exercises
        @exercise = Exercise.find_by(id: params[:id])
        redirect_to exercises_path if !@exercise
    end 

    def redirect_if_not_current_user_patient
        current_user_ids = current_user.patients.map{|patient| patient.id.to_s}
        if current_user_ids.include?(params[:patient_id])
            @exercises = Patient.find(params[:patient_id]).exercises
        else 
            redirect_to patients_path
        end 
    end 

end
