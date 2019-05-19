class Employee < ApplicationRecord
	
	belongs_to :organization

	#validates :dob, presence: true
	validates :full_name, presence: true
	validates :organization, presence: true

	def perform(big_dependency)
		big_dependency.execute
		return 42
	end
end
