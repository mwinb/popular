require "rails_helper"

RSpec.describe "adding employee", type: :system do
    
    before do
        @test_organization = FactoryBot.create(:organization)
    end

    let(:fake_organization) { "Flipadelphia | PA" }

    it "allows a user to add an employee to an organization" do
        fake_name = "FAKE NAME"
        fake_dob = "05-25-1987"
        fake_title = "FAKE TITLE"

        visit new_employee_path
        fill_in "Full name", with: fake_name
        fill_in "Dob", with: fake_dob
        fill_in "Job title", with: fake_title
        select(fake_organization, from: "Organization")
        click_on("Create Employee")

        expect(page).to have_content(fake_name)
        expect(page).to have_content(fake_title)
        expect(page).to have_content(fake_dob)
        expect(page).to have_content("Flipadelphia | PA")
    end

    #SAD PATHS
    it "does not allow a user to create an employee without a name" do
        fake_dob = "05-25-1987"
        fake_title = "FAKE TITLE"

        visit new_employee_path
        fill_in "Dob", with: fake_dob
        fill_in "Job title", with: fake_title
        select fake_organization, from: "Organization"
        click_on("Create Employee")
        
        expect(page).to_not have_content("All Employees")
    end

    describe "fullname" do
        let(:employee) {build(:employee, full_name: "Dennis Reynolds", dob: "08-18-1976", job_title: "golden god")}
        it "has a full name" do
          expect(employee.full_name).to eql "Dennis Reynolds"
        end
      end

end