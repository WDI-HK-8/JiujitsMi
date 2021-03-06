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

ActiveRecord::Schema.define(version: 20151220103750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delete_user_videos", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "technique_id"
    t.integer  "video_id"
    t.string   "name"
    t.integer  "size"
    t.string   "ssl_url"
    t.string   "thumb_name"
    t.integer  "thumb_size"
    t.string   "thumb_ssl_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "index"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "positions", ["user_id"], name: "index_positions_on_user_id", using: :btree

  create_table "steps", force: :cascade do |t|
    t.integer  "index"
    t.string   "instruction"
    t.integer  "technique_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "technique_types", force: :cascade do |t|
    t.string   "name"
    t.string   "order_array"
    t.integer  "position_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "index"
  end

  create_table "techniques", force: :cascade do |t|
    t.string   "name"
    t.string   "video_url"
    t.string   "other_notes"
    t.string   "order_array"
    t.integer  "technique_type_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "index"
    t.string   "proficiency"
  end

  create_table "user_videos", force: :cascade do |t|
    t.integer  "technique_id"
    t.string   "provided_id"
    t.string   "name"
    t.integer  "size"
    t.integer  "cost"
    t.string   "duration"
    t.string   "url"
    t.string   "ssl_url"
    t.string   "thumb_name"
    t.integer  "thumb_size"
    t.integer  "thumb_cost"
    t.string   "thumb_url"
    t.string   "thumb_ssl_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "membership_type"
    t.string   "status"
    t.integer  "last_position"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "positions", "users"
end
