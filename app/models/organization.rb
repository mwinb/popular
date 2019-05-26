class Organization < ApplicationRecord

  has_many :employees

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  def formatted_name
    "#{name} | #{location}"
  end

end
