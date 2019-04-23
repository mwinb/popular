class Employee
	attr_accessor :full_name, :dob, :job_title, :department, :status

	def initialize(full_name, dob, job_title, department, status)
		@full_name = full_name
		@dob = dob
		@job_title = job_title
		@department = department
		@status = status
	end

	def in_view?
		false
	end

	def on_deck?
		false
	end

end