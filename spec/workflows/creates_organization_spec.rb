require "rails_helper"

RSpec.describe CreatesOrganization do
    describe "initialization" do
        it "creates organization given name" do
            creator = CreatesOrganization.new(organization_name: "Paddys Pub")
            creator.build
            expect(creator.organization.name).to eq("Paddys Pub")
        end

        it "creates organization given name and location" do
            creator = CreatesOrganization.new(organization_name: "Paddys Pub", organization_location: "PA")
            creator.build
            expect(creator.organization.name).to eq("Paddys Pub")
            expect(creator.organization.location).to eq("PA")
        end
    end

    describe "error case" do
        it "checks if a entries are empty" do
            creator = CreatesOrganization.new(organization_name: "", organization_location: nil)
            creator.create
            #expect(creator).not_to be_a_success
            expect(creator.organization.name).to eq("")
            expect(creator.organization.location).to eq(nil)
        end

        it "checks if an entry is empty" do
            creator = CreatesOrganization.new(organization_name: "Paddys Pub", organization_location: nil)
            creator.create
            assert_equal creator.organization.location, nil, "there is some kind of location still"
        end

        it "checks if an organization name is filled" do
            creator = CreatesOrganization.new(organization_name: "Paddys Pub", organization_location: "PA")
            creator.create
            assert_equal creator.organization.name, "Paddys Pub", "The entry is nil"
            #assert_equal creator.organization.name, nil, "The entry is nil"
        end

        it "checks if a location is selected" do
            creator = CreatesOrganization.new(organization_name: "Paddys Pub")
            creator.create
            expect(creator.organization.location).to be_nil
        end

    end
end