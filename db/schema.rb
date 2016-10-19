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

ActiveRecord::Schema.define(version: 20161019090841) do

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fileable_type"
    t.integer  "fileable_id"
    t.string   "caption"
    t.string   "file"
    t.string   "name"
    t.string   "content_type"
    t.string   "digest"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["fileable_type", "fileable_id"], name: "index_images_on_fileable_type_and_fileable_id", using: :btree
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "ユーザー" do |t|
    t.string   "name"
    t.integer  "profile_image_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
