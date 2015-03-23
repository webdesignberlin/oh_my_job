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

ActiveRecord::Schema.define(version: 20150323100645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_offers", force: :cascade do |t|
    t.integer  "document_id"
    t.string   "job_title"
    t.string   "organization_name"
    t.string   "agency_sub_element"
    t.string   "salary_min"
    t.string   "salary_max"
    t.string   "salary_basis"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "who_may_apply_text"
    t.string   "pay_plan"
    t.integer  "series"
    t.string   "grade"
    t.string   "work_schedule"
    t.string   "work_type"
    t.string   "locations"
    t.string   "announcement_number"
    t.text     "job_summary"
    t.string   "apply_online_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
