require 'rails_helper'

RSpec.describe CreatesDepartment do

  before do
    @test_organization = FactoryBot.create(:organization)
  end

  it "creates a department given a name and organization" do
    creator = CreatesDepartment.new(name: "HR", organization_id: @test_organization)
    creator.create
    expect(creator.department.name).to eq("HR")
  end

  it "fails to create an department without an organization" do
    creator = CreatesDepartment.new(name: 'HR')
    creator.create
    expect(creator.success?).to be(false)
  end

  it "fails to create an depdartment without an name" do
    creator = CreatesDepartment.new(organization_id: @test_organization)
    creator.create
    expect(creator.success?).to be(false)
  end
end
