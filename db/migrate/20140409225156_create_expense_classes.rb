class CreateExpenseClasses < ActiveRecord::Migration
  def change
    create_table :expense_classes do |t|
      t.string :name, null: false
      t.references :category, null: false

      t.timestamps
    end
    add_index :expense_classes, :category_id
  end
end
