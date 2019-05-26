class Employee < ApplicationRecord
  
  belongs_to :organization

  validates :organization, presence: true
  validates :full_name, presence: true


  def perform(big_dependency)
    big_dependency.execute
    return 42
  end
end
