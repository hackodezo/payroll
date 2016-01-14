class CreateAllotLeaves < ActiveRecord::Migration
  def change
    create_table :allot_leaves do |t|
      t.integer :employee_id
      t.integer :paymonth_id

      t.timestamps null: false
    end
  end
end
