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

ActiveRecord::Schema[7.0].define(version: 2022_11_07_010348) do
  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "course"
    t.integer "prefix_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefix_id"], name: "index_courses_on_prefix_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "email"
    t.string "phone"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people_sections", force: :cascade do |t|
    t.integer "person_id"
    t.integer "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["person_id"], name: "index_people_sections_on_person_id"
    t.index ["section_id"], name: "index_people_sections_on_section_id"
  end

  create_table "prefixes", force: :cascade do |t|
    t.string "prefix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "section"
    t.integer "crn"
    t.integer "course_id", null: false
    t.integer "semester_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_sections_on_course_id"
    t.index ["semester_id"], name: "index_sections_on_semester_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "semester"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "prefixes"
  add_foreign_key "people_sections", "people"
  add_foreign_key "people_sections", "sections"
  add_foreign_key "sections", "courses"
  add_foreign_key "sections", "semesters"
end
