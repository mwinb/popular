class Employee < ApplicationRecord
	# attr_accessor :full_name, :dob, :job_title, :organization, :department, :status
	belongs_to :organization
	# def initialize(full_name, dob, job_title, organization, department, status)
	# 	@full_name = full_name
	# 	@dob = dob
	# 	@job_title = job_title
	# 	@organization = organization
	# 	@department = department
	# 	@status = status
	# end

	def in_view?
		false
	end

	def on_deck?
		false
	end

end