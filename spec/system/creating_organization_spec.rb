require "rails_helper"

RSpec.describe "creating an organization", type: :system do

    it "allows a user to create an organization" do
        fake_name = "FAKE ORGANIZATION"
        fake_location = "FAKE LOCATION"

        visit new_organization_path
        fill_in "Name", with: fake_name
        fill_in "Location", with: fake_location
        click_on("Create Organization")

        expect(page).to have_content(fake_name)
        expect(page).to have_content(fake_location)
    end

    #SAD PATHS
    it "does not allow a user to create an organization without a name" do
        visit new_organization_path
        fill_in "Name", with: ""
        fill_in "Location", with: "FAKE LOCATION"
        click_on("Create Organization")
        expect(page).to have_content("error")
    end

    it "does not allow a user to create an organization without a location" do
        visit new_organization_path
        fill_in "Name", with: "FAKE NAME"
        fill_in "Location", with: ""
        click_on("Create Organization")
        expect(page).to have_content("error")
    end

end