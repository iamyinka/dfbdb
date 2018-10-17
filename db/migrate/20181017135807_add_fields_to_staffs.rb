class AddFieldsToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_reference :staffs, :department, foreign_key: true
  end
end
