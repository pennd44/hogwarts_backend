# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_27_025138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: :cascade do |t|
    t.text "content"
    t.bigint "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_announcements_on_teacher_id"
  end

  create_table "assignment_questions", force: :cascade do |t|
    t.text "question"
    t.integer "assignment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "prompt"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "house"
    t.boolean "is_student"
    t.string "image"
    t.integer "birthyear"
    t.string "patronus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sorting_hat_answers", force: :cascade do |t|
    t.string "house"
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sorting_hat_question_id"
    t.string "image"
  end

  create_table "sorting_hat_questions", force: :cascade do |t|
    t.text "question"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.integer "number"
  end

  create_table "student_assignments", force: :cascade do |t|
    t.bigint "student_id"
    t.integer "assignment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "text"
    t.index ["student_id"], name: "index_student_assignments_on_student_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "house"
    t.string "alter_ego"
    t.boolean "is_student"
    t.bigint "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "character_id"
    t.index ["teacher_id"], name: "index_users_on_teacher_id"
  end

end
