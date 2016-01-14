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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160114090906) do

  create_table "addresses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "country_id"
    t.integer  "state_id"
  end

  create_table "allot_leaves", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "paymonth_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "counties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "employee_leaves" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "employee_salaries", force: :cascade do |t|
    t.date     "salary_date"
    t.integer  "employee_id"
    t.integer  "salary_structure_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.text     "address"
    t.date     "date_of_joining"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "gender"
    t.integer  "department_id"
    t.integer  "designation_id"
    t.string   "state"
    t.date     "salary_date"
  end

  create_table "leave_heads", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "leave_head_id"
  end

  create_table "paymonth_leaves", force: :cascade do |t|
    t.integer  "leave_id"
    t.integer  "paymonth_id"
    t.integer  "value"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "leave_head_id"
  end

  create_table "paymonths", force: :cascade do |t|
    t.integer  "month_year"
    t.integer  "day_count"
    t.string   "month_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "pay_month"
  end

  create_table "salary_structures", force: :cascade do |t|
    t.integer  "basic"
    t.integer  "da"
    t.integer  "hra"
    t.integer  "pf"
    t.integer  "others"
    t.integer  "pt"
    t.integer  "emp_pf"
    t.integer  "gratuity"
    t.integer  "conveyance"
    t.integer  "special_allowance"
    t.integer  "gross"
    t.integer  "monthly_ctc"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "name"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "country_id"
  end

end
