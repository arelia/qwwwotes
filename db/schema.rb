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

ActiveRecord::Schema.define(version: 20160207062956) do

  create_table "qwwwotes", force: :cascade do |t|
    t.text     "quote"
    t.string   "author"
    t.string   "source"
    t.string   "source_url"
    t.date     "date"
    t.string   "tags"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qwwwotes_tags", id: false, force: :cascade do |t|
    t.integer "qwwwote_id"
    t.integer "tag_id"
  end

  add_index "qwwwotes_tags", ["qwwwote_id"], name: "index_qwwwotes_tags_on_qwwwote_id"
  add_index "qwwwotes_tags", ["tag_id"], name: "index_qwwwotes_tags_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
