class CreateStaffCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_categories do |t|
      t.references :staff, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
