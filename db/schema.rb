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

ActiveRecord::Schema.define(version: 20141128222912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mentor_skills", force: true do |t|
    t.integer  "mentor_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mentor_skills", ["mentor_id"], name: "index_mentor_skills_on_mentor_id", using: :btree
  add_index "mentor_skills", ["skill_id"], name: "index_mentor_skills_on_skill_id", using: :btree

  create_table "mentors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
    t.integer  "phone_number"
  end

  create_table "mods", force: true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "cohort"
    t.integer  "mod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "posse_id"
  end

  create_table "users", force: true do |t|
    t.string  "uid"
    t.string  "profile_type"
    t.integer "profile_id"
  end

end
