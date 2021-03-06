# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_14_125334) do

  create_table "completed_disciplines", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "discipline_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discipline_id"], name: "index_completed_disciplines_on_discipline_id"
    t.index ["student_id"], name: "index_completed_disciplines_on_student_id"
  end

  create_table "dependencies", force: :cascade do |t|
    t.integer "discipline_id"
    t.integer "dependency_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discipline_id"], name: "index_dependencies_on_discipline_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "semester_id", null: false
    t.index ["semester_id"], name: "index_disciplines_on_semester_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "completed_disciplines", "disciplines"
  add_foreign_key "completed_disciplines", "students"
  add_foreign_key "disciplines", "semesters"
end
