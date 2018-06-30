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

ActiveRecord::Schema.define(version: 2018_06_30_175632) do

  create_table "server_sizes", force: :cascade do |t|
    t.string "size_name"
    t.integer "model"
    t.string "cpu"
    t.integer "cpu_cores"
    t.integer "memory"
    t.text "disk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string "ip"
    t.string "sn"
    t.string "os"
    t.date "purchase_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "server_size_id"
    t.index ["server_size_id"], name: "index_servers_on_server_size_id"
  end

  create_table "vm_sizes", force: :cascade do |t|
    t.string "size_name"
    t.integer "cpu_cores"
    t.integer "memory"
    t.integer "storage"
    t.integer "disk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vms", force: :cascade do |t|
    t.string "ip"
    t.integer "status"
    t.integer "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vm_size_id"
    t.index ["vm_size_id"], name: "index_vms_on_vm_size_id"
  end

end
