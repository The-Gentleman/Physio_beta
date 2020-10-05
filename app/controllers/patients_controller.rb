class PatientsController < ApplicationController
    def new 
        @patient = Patient.new
    end 

    def create 
        @patient = Patient.create(patient_params)
        redirect_to patients_path
    end 

    def index 
        @patients = Patient.all
    end 

    private 
    def patient_params
        params.require(:patient).permit(:name, :diagnosis)
    end 
end
