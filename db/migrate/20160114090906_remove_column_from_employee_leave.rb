class RemoveColumnFromEmployeeLeave < ActiveRecord::Migration
  def change
    add_column :employee_leaves, :head_values ,:string
  end
end
