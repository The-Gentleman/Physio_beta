class PatientsController < ApplicationController
    def index 
        # I want the view to see the list of patient names and  illness 
        @patients = Patient.all
    end 
end
