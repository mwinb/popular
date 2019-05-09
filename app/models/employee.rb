class Employee < ApplicationRecord
	
	belongs_to :organization

	#validates :dob, presence: true
end
