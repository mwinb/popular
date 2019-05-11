require 'rails_helper'

RSpec.describe Employee, type: :model do
  
  let(:employee) { Employee.new }

  it "belongs to an organization" do
    expect(employee).to respond_to(:organization)
  end

  it "has a full name" do
    expect(employee).to respond_to(:full_name)
  end

  it "has a job title" do
   expect(employee).to respond_to(:job_title)
  end

  it "has a dob" do
    expect(employee).to respond_to(:dob)
   end

   it "belongs to an organization" do
    employee.organization = Organization.new(name: "FAKE ORGANIZATION", location: "fake place")
    expect(employee.organization.name).to eq("FAKE ORGANIZATION") 
   end

  it "is invalid without a name" do
    employee.organization = Organization.new(name: "FAKE ORGANIZATION", location: "fake place")
    employee.full_name = "Fake Name"
    expect(employee).to be_valid
    employee.full_name = ""
    expect(employee).not_to be_valid
  end

  it "is invalid without an Organization" do
    employee.organization = Organization.new(name: "FAKE ORGANIZATION", location: "fake place")
    employee.full_name = "Fake Name"
    expect(employee).to be_valid
    employee.organization = nil
    expect(employee).not_to be_valid
  end

end
