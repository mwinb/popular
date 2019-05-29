class Organization < ApplicationRecord

  has_many :employees

  validates :name, presence: true, uniqueness: {scope: :location, message: "Organization cannot exist twice in same location"}
  validates :location, presence: true

  def formatted_name
    "#{name} | #{location}"
  end

end
