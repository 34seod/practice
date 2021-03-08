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

ActiveRecord::Schema.define(version: 2020_09_20_073600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.date "birth"
    t.text "address"
    t.string "ctype"
    t.binary "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_authors_on_user_id"
  end

  create_table "authors_books", force: :cascade do |t|
    t.bigint "author_id"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_authors_books_on_author_id"
    t.index ["book_id"], name: "index_authors_books_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "isbn"
    t.string "title"
    t.integer "price"
    t.string "publish"
    t.date "published"
    t.boolean "dl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fan_comments", force: :cascade do |t|
    t.integer "author_no"
    t.string "name"
    t.text "body"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "lock_version", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memos", force: :cascade do |t|
    t.string "memoable_type"
    t.bigint "memoable_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["memoable_type", "memoable_id"], name: "index_memos_on_memoable_type_and_memoable_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "user_id"
    t.integer "status", default: 0, null: false
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.boolean "dm"
    t.string "roles"
    t.integer "reviews_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "authors", "users"
  add_foreign_key "authors_books", "authors"
  add_foreign_key "authors_books", "books"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
end