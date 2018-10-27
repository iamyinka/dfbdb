class RemoveLeaveTypeFromStaffs < ActiveRecord::Migration[5.2]
  def change
    remove_column :staffs, :leave_type, :string
  end
end
