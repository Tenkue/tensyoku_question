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

ActiveRecord::Schema.define(version: 2020_08_28_192747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.string "programing_language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learning_methods", force: :cascade do |t|
    t.string "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "work_location"
  end

  create_table "post_questions", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "question_id"
    t.index ["post_id"], name: "index_post_questions_on_post_id"
    t.index ["question_id"], name: "index_post_questions_on_question_id"
  end

  create_table "posts", force: :cascade do |t|
    t.date "interview_date"
    t.text "text"
    t.bigint "user_id"
    t.bigint "place_id"
    t.bigint "style_id"
    t.index ["place_id"], name: "index_posts_on_place_id"
    t.index ["style_id"], name: "index_posts_on_style_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.integer "counter"
  end

  create_table "styles", force: :cascade do |t|
    t.string "business_form"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "image"
    t.string "encrypted_password", default: "", null: false
    t.bigint "language_id"
    t.bigint "learning_method_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_users_on_language_id"
    t.index ["learning_method_id"], name: "index_users_on_learning_method_id"
  end

  add_foreign_key "post_questions", "posts"
  add_foreign_key "post_questions", "questions"
  add_foreign_key "posts", "places"
  add_foreign_key "posts", "styles"
  add_foreign_key "posts", "users"
  add_foreign_key "users", "languages"
  add_foreign_key "users", "learning_methods"
end
