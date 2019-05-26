class Organization < ApplicationRecord

  has_many :employees

  validates :name, presence: true
  validates :location, presence: true

  def formatted_name
    "#{name} | #{location}"
  end

  def to_s
    "#{name} | #{location}"
  end 

end
