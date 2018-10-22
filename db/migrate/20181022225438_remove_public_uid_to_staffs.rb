class RemovePublicUidToStaffs < ActiveRecord::Migration[5.2]
  def change
    remove_column :staffs, :public_uid, :string
  end
end
