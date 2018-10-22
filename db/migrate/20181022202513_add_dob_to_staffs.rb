class AddDobToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :dob, :date
    add_column :staffs, :staff_since, :date
  end
end
