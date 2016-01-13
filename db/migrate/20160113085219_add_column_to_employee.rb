class AddColumnToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :salary_date, :date
  end
end
