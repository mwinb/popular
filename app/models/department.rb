class Department < ApplicationRecord

  belongs_to :organization
  has_many :employee, dependent: :destroy

  validates :name, presence: true

end
