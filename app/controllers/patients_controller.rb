class PatientsController < ApplicationController
    before_action :find_patient, only: [:show]
    def new 
        @patient = Patient.new
    end 

    def index 
        if !current_user.patients.empty?
            @patients = current_user.patients.uniq
            @frequent_patients = current_user.exercises.most_frequent_patient
        else 
            flash[:message] = "You dont have any patients yet! Add one below."
            redirect_to new_patient_path
        end 
    end 

    def create 
        @patient = Patient.create(patient_params)
        if @patient.save
            redirect_to new_patient_exercise_path(@patient)
        else 
            render :new
        end 
    end 


    def show 
    end 

    
    
    private 
    def patient_params
        params.require(:patient).permit(:name, :diagnosis)
    end 

    def find_patient
        current_user_ids = current_user.patients.map{|patient| patient.id.to_s}
        if current_user_ids.include?(params[:id])
            @patient = Patient.find_by(id: params[:id]) 
        else 
            redirect_to patients_path
        end 
    end 

end
