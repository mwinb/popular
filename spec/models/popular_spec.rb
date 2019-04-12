require "rails_helper"

RSpec.describe Person do
	let (:person) { Person.new("Frank Reynolds", "01/31/1943", "financer", "Finance", "NA") }
	let (:next_person) { Person.new("Charlie Day", "02/09/1976", "janitor", "Maintenance", "A") }
	
	it "has distinctive information" do
		expect(person.full_name) == "Frank Reynolds"
		expect(person.dob) == "01/31/1943"
		expect(person.job_title) == "financer"
		expect(person.department) == "Finance"
	end

	it "can be the person being viewed" do
		person.in_view? == true
		expect(next_person.in_view?) == false
		expect(person.in_view?) == true
	end

	it "can be the next person to be viewed" do
		next_person.on_deck? == true
		expect(person.on_deck?) == false
		expect(next_person.in_view?) == false
		expect(next_person.on_deck?) == true
	end

	it "has to have information" do
		expect(person.full_name).to be_truthy
		expect(person.dob).to be_truthy
		expect(person.job_title).to be_truthy
	end

	it "needs to be current staff" do
		expect(person.status) == "NA"
		expect(next_person.status) == "A"
	end

	describe "organization" do
		let (:org) {Organization.new()}
	end

end