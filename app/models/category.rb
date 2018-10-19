class Category < ApplicationRecord
  belongs_to :department
  has_many :staff_categories
  has_many :staffs, through: :staff_categories
end
