class AddDateToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :date, :date, null: false, default: Date.today
  end
end