class Staff < ApplicationRecord
  belongs_to :department
  has_many :staff_categories
  has_many :categories, through: :staff_categories

  validates :fname, presence: true, length: { minimum: 3, maximum: 50 }
  validates :lname, presence: true, length: { minimum: 3, maximum: 50 }
  validates :address, presence: true, length: { minimum: 10, maximum: 200 }
  validates :phone, presence: true, length: { minimum: 11, maximum: 15 }
  validates :position, presence: true, length: { minimum: 5, maximum: 50 }
  validates :department_id, presence: true
end
