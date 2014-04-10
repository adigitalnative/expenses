class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.date :start, null: false
      t.date :end, null: false

      t.timestamps
    end
  end
end
