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

ActiveRecord::Schema.define(version: 2019_01_15_210355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.integer "months"
    t.integer "percent"
    t.bigint "loan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loan_id"], name: "index_bids_on_loan_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_purchases", force: :cascade do |t|
    t.bigint "sellable_good_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "aasm_state"
    t.index ["sellable_good_id"], name: "index_credit_purchases_on_sellable_good_id"
  end

  create_table "loans", force: :cascade do |t|
    t.bigint "user_id"
    t.string "status"
    t.bigint "bid_id"
    t.bigint "sellable_good_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bid_id"], name: "index_loans_on_bid_id"
    t.index ["sellable_good_id"], name: "index_loans_on_sellable_good_id"
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "sellable_good_images", force: :cascade do |t|
    t.bigint "sellable_good_id"
    t.string "url_file_name"
    t.string "url_content_type"
    t.integer "url_file_size"
    t.datetime "url_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sellable_good_id"], name: "index_sellable_good_images_on_sellable_good_id"
  end

  create_table "sellable_goods", force: :cascade do |t|
    t.string "img_url"
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.float "rating"
    t.string "firm"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_sellable_goods_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.integer "income_start", default: 0
    t.integer "income_end", default: 200000
    t.integer "years_start", default: 18
    t.integer "years_end", default: 40
    t.integer "credit_score_start", default: 300
    t.integer "credit_score_end", default: 850
    t.boolean "male", default: true
    t.boolean "female", default: true
    t.string "categories", default: [], array: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bids", "loans"
  add_foreign_key "loans", "sellable_goods"
  add_foreign_key "loans", "users"
  add_foreign_key "sellable_good_images", "sellable_goods"
  add_foreign_key "sellable_goods", "categories"
end
