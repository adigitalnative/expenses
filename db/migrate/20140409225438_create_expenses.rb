class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :description, null: false
      t.integer :value_in_cents, null: false
      t.references :project, null: false
      t.references :expense_class, null:false

      t.timestamps
    end
    add_index :expenses, :project_id
    add_index :expenses, :expense_class_id
  end
end
