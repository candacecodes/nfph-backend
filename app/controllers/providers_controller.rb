class ProvidersController < ApplicationController
    before_action :find_provider, only: [:show, :update, :destroy]
    before_action :authorized, only: [:update]

    def index
        providers = Provider.all
        render json: providers
    end

    def show
        if provider 
            render json: provider
        else 
            render json: { error: 'provider could not be found' }
        end
    end

    def create
        provider = Provider.new(provider_params)
        if provider.save
            render json: provider 
        else 
            render json: { error: 'provider could not be created' }
        end
    end

    def update
        provider.update(provider_params)
        if provider.valid?
            render json: provider
        else 
            render json: { error: 'provider could not be found' }
        end
    end

    def destroy
        if provider
            provider.delete
        else
            render json: { error: 'provider could not be found' }
        end
    end

    def login
        provider = Provider.find_by(email_address: params[:email_address])
        if provider && provider.authenticate(params[:password])
            token = encode_token({provider_uuid: provider.patient_uuid})
            render json: {provider: provider, token: token}
        else 
            render json: {error: 'Incorrect Email or Password'}
        end
    end

    private
    def provider_params
        params.require(:provider).permit(:email_address, :password, :first_name, :last_name, :NPI_number, :provider_uuid, :title, :field, :organization_id)
    end

    def find_provider
        provider = Provider.find(params[:id])
    end
end
