class AddColumnToSalaryStructure < ActiveRecord::Migration
  def change
    add_column :salary_structures, :name, :string
  end
end
