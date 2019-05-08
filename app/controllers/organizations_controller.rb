class OrganizationsController < ApplicationController
    def new
        @organization = Organization.new
    end

    def index
        @organizations = Organization.all
    end
    
    def create
        @organization = Organization.new(
          name: params[:organization][:name],
          location: params[:organization][:location]
        )
        if @organization.save
            redirect_to organizations_path
        else
            render :new
        end
    end

end
