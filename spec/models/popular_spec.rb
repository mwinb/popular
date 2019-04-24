require "rails_helper"

RSpec.describe Employee do
	let (:employee) { Employee.new("Frank Reynolds", "01/31/1943", "financer", "Paddys Pub", "Finance", "NA") }
	let (:next_employee) { Employee.new("Charlie Day", "02/09/1976", "janitor", "Paddys Pub", "Maintenance", "A") }
	
	it "has distinctive information" do
		expect(employee.full_name) == "Frank Reynolds"
		expect(employee.dob) == "01/31/1943"
		expect(employee.job_title) == "financer"
		expect(employee.department) == "Finance"
	end

	it "can be the employee being viewed" do
		employee.in_view? == true
		expect(next_employee.in_view?) == false
		expect(employee.in_view?) == true
	end

	it "can be the next employee to be viewed" do
		next_employee.on_deck? == true
		expect(employee.on_deck?) == false
		expect(next_employee.in_view?) == false
		expect(next_employee.on_deck?) == true
	end

	it "has to have information" do
		expect(employee.full_name).to be_truthy
		expect(employee.dob).to be_truthy
		expect(employee.job_title).to be_truthy
	end

	it "needs to be current staff" do
		expect(employee.status) == "NA"
		expect(next_employee.status) == "A"
	end

end