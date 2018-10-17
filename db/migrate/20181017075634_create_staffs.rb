class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :email
      t.string :address
      t.string :position

      t.timestamps
    end
  end
end
