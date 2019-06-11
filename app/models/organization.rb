class Organization < ApplicationRecord

  has_many :employees, through: :employees, dependent: :destroy
  has_many :departments, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true

end
