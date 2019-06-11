class Department < ApplicationRecord

  belongs_to :organization
  has_many :employee, dependent: :destroy

  validates :name, presence: true

  def perform(big_dependency)
    big_dependency.execute
    42
  end
end
