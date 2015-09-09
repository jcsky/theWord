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

ActiveRecord::Schema.define(version: 20150909064304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "byenotes", force: :cascade do |t|
    t.integer "user_id"
    t.text    "funeral"
    t.text    "some_message"
    t.string  "donate_select",           default: "no"
    t.boolean "donate_heart",            default: false
    t.boolean "donate_lung",             default: false
    t.boolean "donate_liver",            default: false
    t.boolean "donate_pancreas",         default: false
    t.boolean "donate_kidney",           default: false
    t.boolean "donate_smll_intestine",   default: false
    t.boolean "donate_cornea",           default: false
    t.boolean "donate_skin",             default: false
    t.boolean "donate_skeleton",         default: false
    t.boolean "donate_heart_valve",      default: false
    t.boolean "donate_artery",           default: false
    t.boolean "hospice_palliative",      default: false
    t.boolean "hospice_no_cpr",          default: false
    t.boolean "hospice_life_sustaining", default: false
  end

  add_index "byenotes", ["user_id"], name: "index_byenotes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "fullname"
    t.date     "birthday"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.string   "phone"
    t.string   "page_url"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["page_url"], name: "index_users_on_page_url", unique: true, using: :btree
  add_index "users", ["provider"], name: "index_users_on_provider", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

end
