require "rails_helper"

RSpec.describe Organization do
    let (:org) {Organization.new(name:"Paddys Pub", location:"PA")}
    let (:employee) { Employee.new(full_name:"Dennis Reynolds", dob:"08/18/1976", job_title:"Golden God", organization:"Paddys Pub", department:"Management", status:"NA") }
    let (:next_employee) { Employee.new(full_name:"Dee Reynolds", dob:"08/18/1976", job_title:"Bird", organization:"Paddys Pub", department:"food and beverage services", status:"A") }
    let (:rickity_cricket) {Employee.new(full_name:"Mathew Mara", dob:"01/01/1976", job_title:"Street Rat", organization:"Some Street", department:"Some Alley", status:"NA") }
    
    it "adds employees to itself" do
        byebug
        org.add_employee(employee)
        org.add_employee(next_employee)
        byebug
    end

    it "only adds employees to itself if they belong to organization" do
        org.add_employee(rickity_cricket)
    end
end