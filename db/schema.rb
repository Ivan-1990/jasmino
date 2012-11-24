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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121124123253) do

  create_table "products", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "main_picture_file_name"
    t.string   "main_picture_content_type"
    t.integer  "main_picture_file_size"
    t.datetime "main_picture_updated_at"
    t.string   "first_picture_file_name"
    t.string   "first_picture_content_type"
    t.integer  "first_picture_file_size"
    t.datetime "first_picture_updated_at"
    t.string   "second_picture_file_name"
    t.string   "second_picture_content_type"
    t.integer  "second_picture_file_size"
    t.datetime "second_picture_updated_at"
    t.string   "third_picture_file_name"
    t.string   "third_picture_content_type"
    t.integer  "third_picture_file_size"
    t.datetime "third_picture_updated_at"
    t.text     "description"
  end

  create_table "shopping_cart_items", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "quantity"
    t.integer  "item_id"
    t.string   "item_type"
    t.float    "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shopping_carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
