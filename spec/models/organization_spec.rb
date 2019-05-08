require "rails_helper"

RSpec.describe Organization do
    let (:organization) { Organization.new(name:"Paddys Pub", location:"PA") }
    let (:employee) { Employee.new(full_name:"Dennis Reynolds", dob:"08-18-1976", job_title:"Golden God", organization: Organization.new(name:"Paddys Pub", location:"PA"), department:"Management", status:"NA") }

    it "has employees" do
        expect(organization).to respond_to(:employees)
    end

    it "has a name" do
        expect(organization).to respond_to(:name)
    end

    it "has a location" do
        expect(organization).to respond_to(:location)
    end
    
end