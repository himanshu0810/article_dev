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

ActiveRecord::Schema.define(version: 20160428083046) do

  create_table "articles", force: :cascade do |t|
    t.text     "title",      limit: 65535
    t.integer  "points",     limit: 4
    t.integer  "level",      limit: 4
    t.text     "summary",    limit: 65535
    t.binary   "article",    limit: 65535
    t.text     "link",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tags", force: :cascade do |t|
    t.text     "tag",        limit: 65535
    t.integer  "article_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "tags", ["article_id"], name: "index_tags_on_article_id", using: :btree

  add_foreign_key "tags", "articles"
end
