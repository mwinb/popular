class Person
	attr_accessor :full_name, :dob, :job_title

	def initialize(full_name, dob, job_title)
		@full_name = full_name
		@dob = dob
		@job_title = job_title
	end

	def in_view?
		false
	end

	def on_deck?
		false
	end

end