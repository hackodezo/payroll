class AddColumnToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :country, :string
  end
end
