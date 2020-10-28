class ProvidersController < ApplicationController
    before_action :find_provider, only: [:show, :update, :destroy]

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

    private
    def provider_params
        params.require(:provider).permit(:email_address, :password, :name, :provider_uuid, :title, :field, :organization_id)
    end

    def find_provider
        provider = Provider.find(params[:id])
    end
end
