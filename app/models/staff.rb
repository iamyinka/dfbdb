class Staff < ApplicationRecord
  before_validation :gen_staff_id, on: :create
  belongs_to :department
  has_many :staff_categories, dependent: :destroy
  has_many :categories, through: :staff_categories

  validates :fname, presence: true, length: { minimum: 3, maximum: 50 }
  validates :lname, presence: true, length: { minimum: 3, maximum: 50 }
  validates :address, presence: true, length: { minimum: 10, maximum: 200 }
  validates :phone, presence: true, length: { minimum: 11, maximum: 15 }
  validates :position, presence: true, length: { minimum: 5, maximum: 50 }
  validates :department_id, presence: true
  validates :staff_id, presence: true, uniqueness: true

  private

  def gen_staff_id
    self.staff_id = rand(1000000000..5000000000)
  end
end
