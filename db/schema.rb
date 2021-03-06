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

ActiveRecord::Schema.define(version: 20201125110228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "title"
    t.string "albo"
    t.string "name"
    t.string "surname"
    t.string "company"
    t.string "email"
    t.string "website"
    t.string "skype"
    t.string "phone"
    t.string "mobile"
    t.string "address"
    t.string "city"
    t.string "zip"
    t.string "webinar"
    t.string "relatore_a_londra"
    t.string "relatore_italia"
    t.string "specializzazioni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.bigint "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "group_id"
    t.string "integer"
    t.integer "user_id"
    t.string "article"
    t.string "publications"
    t.string "contract"
    t.date "collaboration"
    t.string "curriculum"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "event_date"
    t.integer "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "noteattaches", force: :cascade do |t|
    t.string "name"
    t.string "attach"
    t.integer "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contact_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.bigint "contact_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_notes_on_contact_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.date "task_date"
    t.string "contact_name"
    t.text "task_desc"
    t.integer "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "notes", "contacts"
  add_foreign_key "notes", "users"
end
