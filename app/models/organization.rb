class Organization < ApplicationRecord
	# attr_accessor :name, :location, :departments, :employees
	has_many :employee
	# @employees = []
	# def initialize(name, location)
	# 	@name = name
	# 	@location = location
	# 	@employees = []
	# end

	def add_employee(employee)
		if employee.organization == @name
			employees << employee.full_name
		end
	end

end