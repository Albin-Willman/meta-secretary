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

ActiveRecord::Schema.define(version: 20140812094146) do

  create_table "api_keys", force: true do |t|
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deployments", force: true do |t|
    t.string   "commit_sha"
    t.string   "tag"
    t.string   "server"
    t.string   "application"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip_address"
    t.string   "repository_name"
  end

  create_table "users", force: true do |t|
    t.string   "github_access_token"
    t.string   "github_owner_name"
    t.string   "username"
    t.string   "password_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_salt"
    t.string   "meta_access_token"
  end

end
