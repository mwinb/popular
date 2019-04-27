require "rails_helper"

RSpec.describe "adding employee", type: :system do
    let (:org) {Organization.new("Paddys Pub", "PA")}
    let (:employee) { Employee.new(full_name:"Dennis Reynolds", dob:"08-18-1976", job_title:"Golden God", organization: Organization.new(name:"Paddys Pub", location:"PA"), department:"Management", status:"NA") }
    let (:next_employee) { Employee.new("Dee Reynolds", "08/18/1976", "Bird", "Paddys Pub", "food and beverage services", "A") }
    let (:rickity_cricket) {Employee.new("Mathew Mara", "01/01/1976", "Street Rat", "Some Street", "Some Alley", "NA") }


    it "allows an organization to add employees" do
        visit new_employee_path
        fill_in "Full name", with:  employee.full_name
        fill_in "Dob", with:  employee.dob
        fill_in "Job title", with:  employee.job_title
        fill_in "Organization", with:  employee.organization
        fill_in "Department", with:  employee.department
        # fill_in "Status", with:  employee.status
        #click_on("Submit")
        # visit organizations_view_employees_path
        # expect(page).to have_content("Dennis Reynolds")
        # expect(page).to have_content("08/18/1976")
        # expect(page).to have_content("Golden God")
        # expect(page).to have_content("Paddys Pub")
        # expect(page).to have_content("Management")
        # expect(page).to have_content("NA")

    end
end