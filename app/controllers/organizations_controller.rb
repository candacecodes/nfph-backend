class OrganizationsController < ApplicationController

    def index
        organizations = Oraganization.all 
        render json: organizations 
    end
    
end
