class Organization < ApplicationRecord

  has_many :employees, through: :employees, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :departments, dependent: :destroy

  validates :name, presence: true

  def formatted_name
    # "#{name} | #{location}"
  end

end
