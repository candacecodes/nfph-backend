class PatientsController < ApplicationController
    before_action :find_patient, only: [:show, :update, :destroy]
    before_action :authorized, only: [:update]

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
            render json: patient 
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

    def login
        patient = Patient.find_by(email_address: params[:email_address])
        if patient && patient.authenticate(params[:password])
            token = encode_token({patient_uuid: patient.patient_uuid})
            render json: {patient: patient, token: token}
        else 
            render json: {error: 'Incorrect Email or Password'}
        end
    end

    private
    def patient_params
        params.require(:patient).permit(:email_address, :password, :first_name, :last_name, :patient_uuid, :diagnosis, :prescriptions, :organization_id)
    end

    def find_patient
        patient = Patient.find(params[:id])
    end
end
