require "rails_helper"

RSpec.describe Organization do
    let (:organization) { FactoryBot.build_stubbed(:organization) }

    it "has employees" do
        expect(organization).to respond_to(:employees)
    end

    it "has the proper name" do
        expect(organization.name).to eq("Flipadelphia")
    end

    it "has the proper location" do
        expect(organization.location).to eq("PA")
    end

    it "has a name" do
        expect(organization).to respond_to(:name)
    end

    it "has a location" do
        expect(organization).to respond_to(:location)
    end

    it "is invalid without a name" do
        expect(organization).to be_valid
        organization.name = ""
        expect(organization).not_to be_valid
    end

    it "is invalid without a location" do
        expect(organization).to be_valid
        organization.location = ""
        expect(organization).not_to be_valid
    end
end
