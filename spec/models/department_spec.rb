require 'rails_helper'

RSpec.describe Department, type: :model do

  let(:department) { FactoryBot.build(:department) }

  it "responds to an organization" do
    expect(department).to respond_to(:organization)
  end

  it "has a name" do
    expect(department).to respond_to(:name)
  end

  it "has a name inserted" do
    expect(department.name).to eql("HR")
  end

  it "has a job title" do
   expect(department).to respond_to(:job_title)
  end

  it "has a job title 2" do
    expect(department.job_title).to eql("Golden God")
  end

  it "has a dob" do
    expect(department).to respond_to(:dob)
  end

  it "belongs to an organization" do
    department.organization = Organization.new(name: "FAKE ORGANIZATION", location: "fake place")
    expect(department.organization.name).to eq("FAKE ORGANIZATION") 
  end

  it "is invalid without a name" do
    department.organization = Organization.new(name: "FAKE ORGANIZATION", location: "fake place")
    department.name = "Fake Name"
    expect(department).to be_valid
    department.name = ""
    expect(department).not_to be_valid
  end

  it "is invalid without an Organization" do
    department.organization = Organization.new(name: "FAKE ORGANIZATION", location: "fake place")
    department.name = "Fake Name"
    expect(department).to be_valid
    department.organization = nil
    expect(department).not_to be_valid
  end

  it "Fake returns from department class 42" do
    result = department.perform(LittleDependency.new)
    expect(result).to eq(42)
  end

  it "stubs and mocks to return department perform value" do
    mocky = double("mock double 1")
    allow(mocky).to receive(:execute)
    result = department.perform(mocky)
    expect(result).to eq(42)
  end

  it "stubs and mocks the department object to test return values" do
    fakeN = "Fake Full Name"
    mock_department = department.new(name: fakeN)
    expect(mock_department).to receive(:name).and_return(fakeN)
    expect(mock_department.name).to eq(fakeN)
  end
end
