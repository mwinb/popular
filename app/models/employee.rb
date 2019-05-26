class Employee < ApplicationRecord
  
  belongs_to :organization

  validates :organization, presence: true
  validates :full_name, presence: true

  validates_uniqueness_of :full_name, :scope => :organization

  def perform(big_dependency)
    big_dependency.execute
    return 42
  end
end
