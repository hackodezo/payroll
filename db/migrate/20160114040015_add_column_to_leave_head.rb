class AddColumnToLeaveHead < ActiveRecord::Migration
  def change
  	add_column :paymonth_leaves, :leave_head_id, :integer
  end
end
