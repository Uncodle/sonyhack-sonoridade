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

ActiveRecord::Schema.define(version: 2019_03_24_054135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musical_genders", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "state"
    t.string "address"
    t.date "birth_date"
    t.string "gender"
    t.text "testimony"
    t.text "trajectory"
    t.bigint "field_id"
    t.bigint "musical_gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_personas_on_email", unique: true
    t.index ["field_id"], name: "index_personas_on_field_id"
    t.index ["musical_gender_id"], name: "index_personas_on_musical_gender_id"
    t.index ["reset_password_token"], name: "index_personas_on_reset_password_token", unique: true
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "field_id"
    t.bigint "musical_gender_id"
    t.bigint "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_questions_on_field_id"
    t.index ["musical_gender_id"], name: "index_questions_on_musical_gender_id"
    t.index ["persona_id"], name: "index_questions_on_persona_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "state"
    t.string "address"
    t.date "birth_date"
    t.string "gender"
    t.bigint "field_id"
    t.bigint "musical_gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["field_id"], name: "index_users_on_field_id"
    t.index ["musical_gender_id"], name: "index_users_on_musical_gender_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "questions", "fields"
  add_foreign_key "questions", "musical_genders"
  add_foreign_key "questions", "personas"
  add_foreign_key "questions", "users"
end
