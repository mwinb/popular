require "rails_helper"

RSpec.describe "adding an orgainzation", type: :system do
    let (:org) {Organization.new(name:"Paddys Pub", location:"PA")}

    it "allows a user make an organization" do
        visit new_organization_path
        fill_in "Name", with: org.name
        fill_in "Location", with: org.location

        click_on("Create Organization")
        expect(page).to have_content("Paddys Pub")
        
    end

    #sad path-ish
    it "does not allow a user to create an organization without a name" do
        visit new_organization_path
        fill_in "Name", with: ""
        #click_on("Create Organization")
    end


end