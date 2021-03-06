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

ActiveRecord::Schema.define(version: 2018_11_01_082028) do

  create_table "addresses", force: :cascade do |t|
    t.integer "user_id"
    t.text "address1"
    t.text "address2"
    t.string "landmark"
    t.integer "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.text "category_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_types", force: :cascade do |t|
    t.string "meal_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_images", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "menuimage_file_name"
    t.string "menuimage_content_type"
    t.integer "menuimage_file_size"
    t.datetime "menuimage_updated_at"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "item_name"
    t.string "item_price"
    t.integer "image_id"
    t.integer "special_category_id"
    t.integer "spicy_level"
    t.integer "offer_id"
    t.text "item_description"
    t.text "item_ingredients"
    t.boolean "item_active"
    t.integer "preparation_time"
    t.string "meal_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menuimages", force: :cascade do |t|
    t.string "image_name"
    t.string "image_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mimage_file_name"
    t.string "mimage_content_type"
    t.integer "mimage_file_size"
    t.datetime "mimage_updated_at"
  end

  create_table "offers", force: :cascade do |t|
    t.string "offer_name"
    t.text "offer_description"
    t.float "discount"
    t.string "coupon_code"
    t.integer "validate_form"
    t.integer "validate_till"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_categories", force: :cascade do |t|
    t.string "special_category_name"
    t.text "special_category_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
