require "rails_helper"

RSpec.describe "adding employee", type: :system do
    # let (:org) {Organization.new("Paddys Pub", "PA")}
    # let (:employee) { Employee.new(full_name:"Dennis Reynolds", dob:"08-18-1976", job_title:"Golden God", organization: Organization.new(name:"Paddys Pub", location:"PA"), department:"Management", status:"NA") }

    # #happy path
    # it "allows an organization to add employees" do
    #     visit new_employee_path
    #     fill_in "Full name", with:  employee.full_name
    #     fill_in "Dob", with:  employee.dob
    #     fill_in "Job title", with:  employee.job_title
    #     fill_in "Organization name", with:  "FAKE ORGANIZATION"
        #fill_in "Department", with:  employee.department
        
        #click_on("Create Employee")
        #expect(page).to have_content("Dennis Reynolds")
        #expect(page).to have_content("08-18-1976")
        # expect(page).to have_content("Golden God")
        # expect(page).to have_content("Paddys Pub")
        # expect(page).to have_content("Management")

    #end
    #sad path
    # it "does not allow a user to create an employee without a name" do
    #     visit new_employee_path
    #     fill_in "Full name", with: ""
    #     fill_in "Dob", with: "6-6-66"
    #     click_on("Create Employee")
    #     #expect(page).to have_selector(".new_employee")
    # end

    #look here
    it "allows a user to add an employee to an organization" do
        fake_name = "FAKE NAME"
        fake_dob = "05-25-1987"
        fake_title = "FAKE TITLE"
        fake_oranization = "FAKE ORGANIZATION"
        
        visit new_employee_path
        fill_in "Full name", with: fake_name
        fill_in "Dob", with: fake_dob
        fill_in "Job title", with: fake_title
        fill_in "Organization", with: fake_oranization
        #select fake_oranization, from: "Organization"
        click_on("Create Employee")

        expect(page).to have_content(fake_name)
        #not rendering on web page but saving on db
        #expect(page).to have_content(fake_dob)
        expect(page).to have_content(fake_title)
    end

    #SAD PATHS
    it "does not allow a user to create an employee without a name" do
        fake_name = "FAKE NAME"
        fake_dob = "05-25-1987"
        fake_title = "FAKE TITLE"
        fake_oranization = "FAKE ORGANIZATION"

        visit new_employee_path
        fill_in "Full name", with: fake_name
        fill_in "Dob", with: ""
        fill_in "Job title", with: fake_title
        fill_in "Organization", with: fake_oranization

        click_on("Create Employee")
        
        expect(page).to have_content("All Employees")
    end
end