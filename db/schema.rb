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

ActiveRecord::Schema.define(version: 2020_05_12_153056) do

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "slave"
    t.string "link"
    t.string "url"
    t.integer "sort"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "slave"
    t.string "link"
    t.string "url"
    t.integer "sort"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.text "description"
    t.text "slave"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "slave"
    t.string "link"
    t.string "url"
    t.integer "sort"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gallery_file_name"
    t.string "gallery_content_type"
    t.integer "gallery_file_size"
    t.datetime "gallery_updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "slave"
    t.string "link"
    t.string "url"
    t.integer "sort"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gallery_file_name"
    t.string "gallery_content_type"
    t.integer "gallery_file_size"
    t.datetime "gallery_updated_at"
  end

  create_table "sliders", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "slave"
    t.string "link"
    t.string "url"
    t.integer "sort"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gallery_file_name"
    t.string "gallery_content_type"
    t.integer "gallery_file_size"
    t.datetime "gallery_updated_at"
    t.string "word1"
    t.string "word2"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end