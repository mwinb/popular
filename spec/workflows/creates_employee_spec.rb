require "rails_helper"
RSpec.describe CreatesEmployee do
    it "creates an employee given a full_name" do
        creator = CreatesEmployee.new(employee_full_name: "Artimis J")
        creator.build
        expect(creator.employee.full_name).to eq("Artimis J")
    end
end
