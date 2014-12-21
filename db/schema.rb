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

ActiveRecord::Schema.define(version: 20141221073421) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "articles", ["user_id"], name: "index_articles_on_user_id"

  create_table "companies", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "branch"
    t.text     "address"
    t.string   "phone"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "detail"
    t.string   "address_village"
    t.string   "address_village_no"
    t.string   "address_soi"
    t.string   "address_road"
    t.string   "address_postal_code"
    t.integer  "province_id"
    t.string   "address_amphur"
    t.string   "address_tambon"
  end

  create_table "disabilities", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disabilities_jobs", id: false, force: true do |t|
    t.integer "disability_id"
    t.integer "job_id"
  end

  create_table "disabilities_resumes", id: false, force: true do |t|
    t.integer "disability_id"
    t.integer "resume_id"
  end

  create_table "disabilitties_resumes", force: true do |t|
    t.integer "disability_id"
    t.integer "resume_id"
  end

  create_table "disabilitties_resumes_joins", id: false, force: true do |t|
    t.integer "disability_id"
    t.integer "resume_id"
  end

  create_table "documents", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents_jobs", id: false, force: true do |t|
    t.integer "document_id"
    t.integer "job_id"
  end

  create_table "jobs", force: true do |t|
    t.integer  "user_id"
    t.integer  "sex_ids"
    t.integer  "disability_ids"
    t.integer  "welfare_ids"
    t.string   "organizationname"
    t.string   "branch"
    t.text     "address"
    t.integer  "province_id"
    t.string   "education"
    t.string   "position"
    t.text     "info"
    t.integer  "jobtype_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "phone"
    t.integer  "amount"
    t.integer  "agefrom"
    t.integer  "ageto"
    t.integer  "wagefrom"
    t.integer  "wageto"
    t.integer  "document_ids"
    t.integer  "toapply_ids"
    t.string   "morewelfare"
    t.string   "moredocument"
    t.string   "moretoapply"
  end

  create_table "jobs_sexes", id: false, force: true do |t|
    t.integer "job_id"
    t.integer "sex_id"
  end

  create_table "jobs_toapplies", id: false, force: true do |t|
    t.integer "job_id"
    t.integer "toapply_id"
  end

  create_table "jobs_welfares", id: false, force: true do |t|
    t.integer "job_id"
    t.integer "welfare_id"
  end

  create_table "jobtypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumes", force: true do |t|
    t.integer  "user_id"
    t.integer  "sex_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "religion"
    t.string   "originnationality"
    t.string   "nationality"
    t.string   "nationalid"
    t.string   "disablerid"
    t.datetime "birthdate"
    t.integer  "disability_ids"
    t.string   "phone"
    t.text     "address"
    t.text     "education"
    t.text     "training"
    t.text     "contactperson"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "title"
    t.string   "address_village"
    t.string   "address_village_no"
    t.string   "address_soi"
    t.string   "address_road"
    t.string   "address_postal_code"
    t.integer  "province_id"
    t.string   "address_amphur"
    t.string   "address_tambon"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toapplies", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
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
    t.integer  "role_id"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "welfares", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
