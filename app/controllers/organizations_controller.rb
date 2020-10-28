class OrganizationsController < ApplicationController

    def index
        organizations = Organization.all 
        render json: organizations 
    end
    
    def show
        organization = Organization.find(params[:id])
        if organization
            render json: organization
        else 
            render json: { error: 'organization could not be found' }
        end
    end
end
