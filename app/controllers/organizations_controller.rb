class OrganizationsController < ApplicationController
    def new
        @organizations = Organization.new
    end
end
