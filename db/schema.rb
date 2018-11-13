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

ActiveRecord::Schema.define(version: 20181113062147) do

  create_table "coach_comments", force: :cascade do |t|
    t.string "commenter"
    t.string "title"
    t.text "body"
    t.integer "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_coach_comments_on_coach_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.text "subject_or_topics"
    t.text "address"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educational_qualifications", primary_key: "uuid", id: :string, limit: 36, force: :cascade do |t|
    t.string "user_id", limit: 36, null: false
    t.string "qualification_name", limit: 128
    t.string "institute_name", limit: 128
    t.string "enrolled_years", limit: 64
    t.string "graduation_date", limit: 18
    t.string "description"
    t.string "major", limit: 128
    t.string "parent_body", limit: 128
    t.string "location", limit: 64
    t.string "result", limit: 32
    t.string "remarks", limit: 128
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uuid"], name: "sqlite_autoindex_educational_qualifications_1", unique: true
  end

  create_table "student_comments", force: :cascade do |t|
    t.string "commenter"
    t.string "title"
    t.text "body"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_student_comments_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.text "interests"
    t.text "address"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
