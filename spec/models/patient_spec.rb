require 'rails_helper'
RSpec.describe Patient, :type => :model do 
    it "must have a name" do  
        patient = Patient.new(name: nil)
        expect(patient).to_not be_valid
    end 

    it "must have a diagnosis" do 
        patient = Patient.new(diagnosis: nil)
        expect(patient).to_not be_valid
    end 

    describe 'associations' do 
        it { should have_many(:exercises)}
        it { should have_many(:users)}
    end 
end 