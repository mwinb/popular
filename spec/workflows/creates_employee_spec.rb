require "rails_helper"
RSpec.describe CreatesEmployee do

  before do
    @test_organization = FactoryBot.create(:organization)
  end

  it "creates an employee given a full_name and organization" do
    creator = CreatesEmployee.new(employee_full_name: "Artimis J", organization_id: @test_organization.id)
    creator.create
    expect(creator.employee.full_name).to eq("Artimis J")
  end

  it "fails to create an employee without an organization" do
    creator = CreatesEmployee.new(employee_full_name: "Artimis J")
    creator.create
    expect(creator.success?).to be(false)
  end

  it "fails to create an employee without an name" do
    creator = CreatesEmployee.new(organization_id: @test_organization.id)
    creator.create
    expect(creator.success?).to be(false)
  end

end
