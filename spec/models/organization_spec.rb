require "rails_helper"

RSpec.describe Organization do
    let (:organization) { FactoryBot.build_stubbed(:organization) }
    before(:each) do
        @mock_dependency = double("some_dependency")
    end

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
        expect(organization).to be_valid
        organization.name = ""
        expect(organization).not_to be_valid
    end

    it "is invalid without a location" do
        expect(organization).to be_valid
        organization.location = ""
        expect(organization).not_to be_valid
    end
    
    it "(fake) returns a result from an organization performing" do
        result = organization.perform(LittleDependency.new)
        expect(result).to eq(42)
    end

    it "(stub/mock) returns a result from an organization performing" do
        allow(@mock_dependency).to receive(:execute)
        result = organization.perform(@mock_dependency)
        expect(result).to eq(42)
    end
end