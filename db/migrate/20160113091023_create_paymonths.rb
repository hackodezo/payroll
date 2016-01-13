class CreatePaymonths < ActiveRecord::Migration
  def change
    add_column :paymonths, :pay_month, :date
  end
end
