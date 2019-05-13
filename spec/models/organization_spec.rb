require "rails_helper"

RSpec.describe Organization do
    let (:organization) { Organization.new(name:"Paddys Pub", location:"PA") }
    let (:org_boi) { FactoryBot.build_stubbed(:organization) }

    it "has employees" do
        expect(organization).to respond_to(:employees)
    end

    it "has a name" do
        expect(organization).to respond_to(:name)
    end

    it "has a location" do
        expect(organization).to respond_to(:location)
    end

    it "is invalid without a name" do
        expect(org_boi).to be_valid
        org_boi.name = ""
        expect(org_boi).not_to be_valid
    end

    it "is invalid without a location" do
        expect(org_boi).to be_valid
        org_boi.location = ""
        expect(org_boi).not_to be_valid
    end
    
end