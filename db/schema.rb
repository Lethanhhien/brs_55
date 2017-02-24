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

ActiveRecord::Schema.define(version: 20170224022737) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.date     "publish_date"
    t.string   "author"
    t.string   "url"
    t.integer  "pages"
    t.integer  "rating"
    t.string   "id_category"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "id_user"
    t.integer  "id_review"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "id_user"
    t.integer  "id_review"
    t.boolean  "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "id_book"
    t.integer  "id_user"
    t.integer  "num_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reading_books", force: :cascade do |t|
    t.integer  "id_user"
    t.integer  "id_book"
    t.string   "url"
    t.boolean  "status_reading"
    t.boolean  "favorite"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "id_flower"
    t.integer  "id_flowed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "id_user"
    t.string   "book_name"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "id_book"
    t.integer  "id_user"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "avatar"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
