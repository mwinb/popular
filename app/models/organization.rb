class Organization < ApplicationRecord

	has_many :employees

	validates :name, presence: true, uniqueness: true
	validates :location, presence: true

end
