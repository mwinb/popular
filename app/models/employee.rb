class Employee < ApplicationRecord

  belongs_to :organization
  belongs_to :department

  validates :organization, presence: true
  validates :department, presence: true
  validates :full_name, presence: true

  def perform(big_dependency)
    big_dependency.execute
    42
  end
end
