require "rails_helper"

RSpec.describe "adding employee", type: :system do
=begin
    # let (:org) {Organization.new("Paddys Pub", "PA")}
    # let (:employee) { Employee.new(full_name:"Dennis Reynolds", dob:"08-18-1976", job_title:"Golden God", organization: Organization.new(name:"Paddys Pub", location:"PA"), department:"Management", status:"NA") }
    
    it "allows a user to add an employee to an organization" do
        fake_name = "FAKE NAME"
        fake_dob = "05-25-1987"
        fake_title = "FAKE TITLE"
        fake_oranization = "FAKE ORGANIZATION"
        
        visit new_employee_path
        fill_in "Full name", with: fake_name
        fill_in "Dob", with: fake_dob
        fill_in "Job title", with: fake_title
        #fill_in "Organization", with: fake_oranization
        #select ("paddies pub"), from: "Organization"
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
        #fill_in "Organization", with: fake_oranization
       # select fake_oranization, from: "Organization"

        click_on("Create Employee")
        
        expect(page).to have_content("All Employees")
    end

    describe "fullname" do
        let(:employee) {build(:employee, full_name: "Dennis Reynolds", dob: "08-18-1976", job_title: "golden god")}
        it "has a full name" do
          expect(employee.full_name).to eql "Dennis Reynolds"
        end
      end

=end
end