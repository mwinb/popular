require "rails_helper"

RSpec.describe CreatesOrganization do
    describe "initialization" do
        it "creates organization given name" do
            creator = CreatesOrganization.new(name: "Paddys Pub")
            creator.build
            expect(creator.organization.name).to eq("Paddys Pub")
        end

        it "creates organization given name and location" do
            creator = CreatesOrganization.new(name: "Paddys Pub", location: "PA")
            creator.build
            expect(creator.organization.name).to eq("Paddys Pub")
            expect(creator.organization.location).to eq("PA")
        end
    end

    describe "error cases" do
        creator = CreatesOrganization.new(name: "", location: "")
        creator.create
        expect(creator).not_to be_a_success
    end
end