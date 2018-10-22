class AddPublicUidToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :public_uid, :string
  end
end
