require "rails_helper"



RSpec.describe "adding employee", type: :system do
    
    attr_accessor :test_organization
    
    before do
        @test_organization = FactoryBot.create(:organization)
    end

    let(:fake_organization_selector) { "Flipadelphia | PA" }
    let(:fake_name) { "FAKE NAME" }
    let(:fake_dob) { "05-25-1987" }
    let(:fake_title) { "FAKE TITLE" }

    let(:name_label) { "Full name" }
    let(:dob_label) { "Dob" }
    let(:title_label) { "Job title" }
    let(:organization_label) { "Organization" }
    let(:submit_label) { "Create Employee" }

    it "allows a user to add an employee to an organization" do

        visit new_employee_path
        fill_in name_label, with: fake_name
        fill_in dob_label, with: fake_dob
        fill_in title_label, with: fake_title
        select fake_organization_selector, from: organization_label
        click_on(submit_label)

        expect(page).to have_content(fake_name)
        expect(page).to have_content(fake_title)
        expect(page).to have_content(fake_dob)
        expect(page).to have_content(test_organization.name)
        expect(page).to have_content(test_organization.location)
    end

    #SAD PATHS
    it "does not allow a user to create an employee without a name" do
        visit new_employee_path
        fill_in dob_label, with: fake_dob
        fill_in title_label, with: fake_title
        select fake_organization_selector, from: organization_label
        click_on(submit_label)
        expect(page).to_not have_content("All Employees")

    end
    it "does not allow a user to create an employee without an organization" do
        visit new_employee_path
        fill_in name_label, with: fake_name
        fill_in dob_label, with: fake_dob
        fill_in title_label, with: fake_title
        click_on(submit_label)
        expect(page).to_not have_content("All Employees")
    end

end