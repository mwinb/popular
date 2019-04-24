class Organization
	attr_accessor :name, :location, :departments, :employees

	def initialize(name, location)
		@name = name
		@location = location
		@employees = []
	end

	def add_employee(employee)
		if employee.organization == @name
			employees << employee
		end
	end

end