class Department < ApplicationRecord
  has_many :staffs, dependent: :destroy
  has_many :categories, dependent: :destroy
end
