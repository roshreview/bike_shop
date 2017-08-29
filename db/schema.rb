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

ActiveRecord::Schema.define(version: 20170829204659) do

  create_table "accessories", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "bike_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "bikes", force: :cascade do |t|
    t.string   "serial_number", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "chains", force: :cascade do |t|
    t.integer  "length",     limit: 4
    t.integer  "bike_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "store_id",   limit: 4
    t.integer  "manager_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "frames", force: :cascade do |t|
    t.integer  "size",       limit: 4
    t.integer  "bike_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "gears", force: :cascade do |t|
    t.integer  "size",       limit: 4
    t.integer  "bike_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "helmets", force: :cascade do |t|
    t.integer  "size",       limit: 4
    t.integer  "bike_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "store_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.datetime "date"
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer  "size",       limit: 4
    t.string   "material",   limit: 255
    t.integer  "bike_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "wheels", force: :cascade do |t|
    t.integer  "diameter",   limit: 4
    t.integer  "bike_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
