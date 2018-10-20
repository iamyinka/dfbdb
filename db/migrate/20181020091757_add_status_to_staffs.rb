class AddStatusToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :status, :string
    add_column :staffs, :leave_type, :string
  end
end
