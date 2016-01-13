class CreatePaymonthLeaves < ActiveRecord::Migration
  def change
    create_table :paymonth_leaves do |t|
      t.integer :leave_id
      t.integer :paymonth_id
      t.integer :value

      t.timestamps null: false
    end
  end
end
