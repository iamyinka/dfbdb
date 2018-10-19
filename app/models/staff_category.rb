class StaffCategory < ApplicationRecord
  belongs_to :staff
  belongs_to :category
end
