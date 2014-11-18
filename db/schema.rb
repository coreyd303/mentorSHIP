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

ActiveRecord::Schema.define(version: 20141118204641) do

  create_table "mentors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentors_skills", id: false, force: true do |t|
    t.integer "mentor_id", null: false
    t.integer "skill_id",  null: false
  end

  add_index "mentors_skills", ["mentor_id", "skill_id"], name: "index_mentors_skills_on_mentor_id_and_skill_id"
  add_index "mentors_skills", ["skill_id", "mentor_id"], name: "index_mentors_skills_on_skill_id_and_mentor_id"

  create_table "skills", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
