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

ActiveRecord::Schema[7.1].define(version: 2024_02_08_164207) do
  create_table "friend_requests", primary_key: "friend_id", force: :cascade do |t|
    t.text "username"
    t.text "sent"
    t.text "received"
  end

  create_table "private_msg", primary_key: ["user_id", "other_user_id"], force: :cascade do |t|
    t.text "username", null: false
    t.integer "user_id", null: false
    t.integer "other_user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "fullname"
    t.string "email"
    t.string "password_digest"
    t.text "interests"
    t.text "courses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workgroup", primary_key: "workgroup_id", force: :cascade do |t|
    t.text "group_name", null: false
    t.text "username"
    t.text "workgroup_interests", null: false
    t.text "about"
  end

  add_foreign_key "friend_requests", "users", column: "friend_id", primary_key: "user_id"
  add_foreign_key "private_msg", "users", column: "other_user_id", primary_key: "user_id"
  add_foreign_key "private_msg", "users", column: "username", primary_key: "username"
  add_foreign_key "private_msg", "users", primary_key: "user_id"
  add_foreign_key "workgroup", "users", column: "username", primary_key: "username"
end
