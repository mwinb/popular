class Organization < ApplicationRecord

	has_many :employees

	validates :name, presence: true 
	validates :location, presence: true

	def perform(big_dependency)
		big_dependency.execute
		return 42
	end

end
