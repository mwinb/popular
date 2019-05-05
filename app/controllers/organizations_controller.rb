class OrganizationsController < ApplicationController
    def new
        @organization = Organization.new
    end

    def index
        @organizations = Organization.all
    end
    
    def create
        @workflow = CreatesOrganization.new(
        organization_name: params[:organization][:name],
        organization_location: params[:organization][:location])
        @workflow.create
        redirect_to organizations_path
    end
end
