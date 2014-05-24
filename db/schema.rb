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

ActiveRecord::Schema.define(version: 20140523232223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "description"
    t.string   "first_appearance_comic_name"
    t.string   "first_appearance_issue_number"
    t.integer  "comic_vine_id"
    t.integer  "marvel_id"
    t.integer  "side_id"
    t.string   "marvel_link"
    t.string   "comic_vine_link"
  end

  add_index "characters", ["side_id"], name: "index_characters_on_side_id", using: :btree

  create_table "movies", force: true do |t|
    t.string  "title"
    t.string  "image_file_name"
    t.integer "type_id"
  end

  add_index "movies", ["type_id"], name: "index_movies_on_type_id", using: :btree

  create_table "roles", force: true do |t|
    t.integer "movie_id"
    t.integer "character_id"
  end

  add_index "roles", ["character_id"], name: "index_roles_on_character_id", using: :btree
  add_index "roles", ["movie_id"], name: "index_roles_on_movie_id", using: :btree

  create_table "sides", force: true do |t|
    t.string "name"
  end

  create_table "types", force: true do |t|
    t.string "name"
  end

end
