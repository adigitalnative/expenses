# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140410204438) do

  create_table "categories", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expense_classes", :force => true do |t|
    t.string   "name",        :null => false
    t.integer  "category_id", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "expense_classes", ["category_id"], :name => "index_expense_classes_on_category_id"

  create_table "expenses", :force => true do |t|
    t.string   "description",                                :null => false
    t.integer  "value_in_cents",                             :null => false
    t.integer  "project_id",                                 :null => false
    t.integer  "expense_class_id",                           :null => false
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.date     "date",             :default => '2014-04-10', :null => false
  end

  add_index "expenses", ["expense_class_id"], :name => "index_expenses_on_expense_class_id"
  add_index "expenses", ["project_id"], :name => "index_expenses_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "name",       :null => false
    t.date     "start",      :null => false
    t.date     "end",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
