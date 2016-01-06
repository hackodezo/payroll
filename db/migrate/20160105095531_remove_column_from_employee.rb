class RemoveColumnFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :designaton_id, :string
    remove_column :employees, :designation, :string
    add_column :employees, :designation_id, :integer
  end
end
