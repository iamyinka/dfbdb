class ChangeIntegerLimitInStaffs < ActiveRecord::Migration[5.2]
  def change
    change_column :staffs, :staff_id, :integer, limit: 8
  end
end
