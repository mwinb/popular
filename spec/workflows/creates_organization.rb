require "rails_helper"

RSpec.describe CreatesOrganization do
    describe "initialization" do
        it "creates organization given name" do
            creator = CreatesOrganization.new(name: "Paddys Pub")
            creator.build
            expect(creator.organization.name).to eq("Paddys Pub")
        end
    end
end