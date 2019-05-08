require 'rails_helper'

RSpec.describe Employee, type: :model do
  
  let(:employee) { Employee.new }

  it "belongs to an organization" do
    expect(employee).to respond_to(:organization)
  end

  pending "has a full_name"
  pending "has a etc..."

end
