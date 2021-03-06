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

ActiveRecord::Schema.define(version: 2021_01_07_110229) do

  create_table "academy_organizations", force: :cascade do |t|
    t.string "code_number"
    t.string "organization_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "code_number"
    t.string "project_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer "send_user_id"
    t.integer "receive_user_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_blogs", force: :cascade do |t|
    t.string "title"
    t.integer "response_count", default: 0
    t.integer "click_count", default: 0
    t.integer "accessment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_path"
    t.integer "tag_id"
    t.string "content"
    t.string "file_size"
    t.index ["tag_id"], name: "index_resource_blogs_on_tag_id"
    t.index ["user_id"], name: "index_resource_blogs_on_user_id"
  end

  create_table "resource_replies", force: :cascade do |t|
    t.integer "reply_id"
    t.integer "resource_blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reply_id"], name: "index_resource_replies_on_reply_id"
    t.index ["resource_blog_id"], name: "index_resource_replies_on_resource_blog_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "text_blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "response_count"
    t.integer "click_count"
    t.integer "accessment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tag_id"
    t.index ["tag_id"], name: "index_text_blogs_on_tag_id"
    t.index ["user_id"], name: "index_text_blogs_on_user_id"
  end

  create_table "text_replies", force: :cascade do |t|
    t.integer "reply_id"
    t.integer "text_blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reply_id"], name: "index_text_replies_on_reply_id"
    t.index ["text_blog_id"], name: "index_text_replies_on_text_blog_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_number"
    t.string "email"
    t.string "sex"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "new_email"
    t.string "login_digest"
  end

  create_table "video_blogs", force: :cascade do |t|
    t.string "title"
    t.integer "response_count", default: 0
    t.integer "click_count", default: 0
    t.integer "accessment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_path"
    t.integer "tag_id"
    t.string "content"
    t.index ["tag_id"], name: "index_video_blogs_on_tag_id"
    t.index ["user_id"], name: "index_video_blogs_on_user_id"
  end

  create_table "video_replies", force: :cascade do |t|
    t.integer "reply_id"
    t.integer "video_blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reply_id"], name: "index_video_replies_on_reply_id"
    t.index ["video_blog_id"], name: "index_video_replies_on_video_blog_id"
  end

end
