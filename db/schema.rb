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

ActiveRecord::Schema.define(version: 20170909234250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "company"
    t.string   "website"
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "campaigns", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.string   "description"
    t.integer  "admin_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "active",      default: false
    t.string   "name"
    t.index ["admin_id"], name: "index_campaigns_on_admin_id", using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.integer  "campaign_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "content"
    t.string   "url"
    t.string   "page_type"
    t.string   "button_photo_file_name"
    t.string   "button_photo_content_type"
    t.integer  "button_photo_file_size"
    t.datetime "button_photo_updated_at"
    t.index ["campaign_id"], name: "index_pages_on_campaign_id", using: :btree
  end

  add_foreign_key "campaigns", "admins"
  add_foreign_key "pages", "campaigns"
end
