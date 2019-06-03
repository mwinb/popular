class Organization < ApplicationRecord

  has_many :employees
  has_many :locations
  has_many :departments

  validates :name, presence: true

  def formatted_name
    # "#{name} | #{location}"
  end

end
