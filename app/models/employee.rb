class Employee < ApplicationRecord
	
	belongs_to :organization

	def in_view?
		false
	end

	def on_deck?
		false
	end

end
