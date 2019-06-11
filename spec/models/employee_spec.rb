require 'rails_helper'

RSpec.describe Employee, type: :model do

  let(:employee) {FactoryBot.build(:employee)}

  it "belongs to an organization" do
    expect(employee).to respond_to(:organization)
  end

  it "has a full name" do
    expect(employee).to respond_to(:full_name)
  end

  it "has a full name inserted" do
    expect(employee.full_name).to eql("Dennis Reynolds")
  end

  it "has a job title" do
   expect(employee).to respond_to(:job_title)
  end

  it "has a job title 2" do
    expect(employee.job_title).to eql("Golden God")
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
    employee.department = Department.new(name: "FAKE DEPARTMENT")
    employee.full_name = "Fake Name"
    expect(employee).to be_valid
    employee.full_name = ""
    expect(employee).not_to be_valid
  end

  it "is invalid without an Organization" do
    employee.organization = Organization.new(name: "FAKE ORGANIZATION", location: "fake place")
    employee.department = Department.new(name: "FAKE DEPARTMENT")
    employee.full_name = "Fake Name"
    expect(employee).to be_valid
    employee.organization = nil
    expect(employee).not_to be_valid
  end

  it "Fake returns from Employee class 42" do
    result = employee.perform(LittleDependency.new)
    expect(result).to eq(42)
  end

  it "stubs and mocks to return employee perform value" do
    mocky = double("mock double 1")
    allow(mocky).to receive(:execute)
    result = employee.perform(mocky)
    expect(result).to eq(42)
  end

  it "stubs and mocks the Employee object to test return values" do
    fakeN = "Fake Full Name"
    fake_job_title = "Fake Jobe Title"
    mock_employee = Employee.new(full_name: fakeN, job_title: fake_job_title)
    expect(mock_employee).to receive(:full_name).and_return(fakeN)
    expect(mock_employee).to receive(:job_title).and_return(fake_job_title)
    expect(mock_employee.full_name).to eq(fakeN)
    expect(mock_employee.job_title).to eq(fake_job_title)
  end

end
