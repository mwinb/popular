require "rails_helper"

RSpec.describe "adding employee", type: :system do
    let (:org) {Organization.new("Paddys Pub", "PA")}
    let (:employee) { Employee.new("Dennis Reynolds", "08/18/1976", "Golden God", "Paddys Pub", "Management", "NA") }
    let (:next_employee) { Employee.new("Dee Reynolds", "08/18/1976", "Bird", "Paddys Pub", "food and beverage services", "A") }
    let (:rickity_cricket) {Employee.new("Mathew Mara", "01/01/1976", "Street Rat", "Some Street", "Some Alley", "NA") }

    #pending (below) tells rspec to wait until removed before fully running tests
    #use this to implement unit tests while system test is...pending
    #remove ", :pending"

    it "allows an organization to add and view employees", :pending do
        visit organizations_add_employees_path
        fill_in "Name", with:  employee.full_name
        fill_in "dob", with:  employee.dob
        fill_in "job_title", with:  employee.job_title
        fill_in "organization", with:  employee.organization
        fill_in "department", with:  employee.department
        fill_in "status", with:  employee.status
        click_on("Add Employee")
        visit organizations_view_employees_path
        expect(page).to have_content("Dennis Reynolds")
        expect(page).to have_content("08/18/1976")
        expect(page).to have_content("Golden God")
        expect(page).to have_content("Paddys Pub")
        expect(page).to have_content("Management")
        expect(page).to have_content("NA")

    end
end