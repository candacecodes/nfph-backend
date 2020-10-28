class PatientsController < ApplicationController
    before_action :find_patient, only: [:show, :update, :destroy]

    def index
        patients = Patient.all
        render json: patients
    end

    def show
        if patient 
            render json: patient
        else 
            render json: { error: 'patient could not be found' }
        end
    end

    def create
        patient = Patient.new(patient_params)
        if patient.save
            render json: user 
        else 
            render json: { error: 'patient could not be created' }
        end
    end

    def update
        patient.update(patient_params)
        if patient.valid?
            render json: patient
        else 
            render json: { error: 'patient could not be found' }
        end
    end

    def destroy
        if patient
            patient.delete
        else
            render json: { error: 'patient could not be found' }
        end
    end

    private
    def patient_params
        params.require(:patient).permit(:email_address, :password, :name, :patient_uuid, :diagnosis, :prescriptions, :organization_id)
    end

    def find_patient
        patient = Patient.find(params[:id])
    end
end
