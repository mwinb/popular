require "rails_helper"

RSpec.describe "adding an orgainzation", type: :system do
    let (:org) {Organization.new(name:"Paddys Pub", location:"PA")}

    it "allows a user make an organization" do
        visit new_organization_path
        fill_in "Name", with: org.name
        fill_in "Location", with: org.location

        click_on("Create Organization")
        expect(page).to have(org.name)
    end

end