require "rails_helper"

RSpec.describe Organization do
    let (:org) {Organization.new("Paddys Pub", "PA")}
    let (:employee) { Employee.new("Dennis Reynolds", "08/18/1976", "Golden God", "Paddys Pub", "Management", "NA") }
    let (:next_employee) { Employee.new("Dee Reynolds", "08/18/1976", "Bird", "Paddys Pub", "food and beverage services", "A") }
    let (:rickity_cricket) {Employee.new("Mathew Mara", "01/01/1976", "Street Rat", "Some Street", "Some Alley", "NA") }
    
    it "adds employees to itself" do
        org.add_employee(employee)
        org.add_employee(next_employee)
    end

    it "only adds employees to itself if they belong to organization" do
        org.add_employee(rickity_cricket)
    end
end