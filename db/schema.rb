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

ActiveRecord::Schema.define(version: 20170216145635) do

  create_table "team_tournaments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "team_id",       null: false
    t.integer  "tournament_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["team_id", "tournament_id"], name: "index_team_tournaments_on_team_id_and_tournament_id", unique: true, using: :btree
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                   null: false
    t.date     "season_start"
    t.date     "season_end"
    t.integer  "game_type",    limit: 1, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",                         null: false
    t.string   "last_name",                          null: false
    t.string   "nickname"
    t.string   "user_name",                          null: false
    t.string   "email",                              null: false
    t.string   "phone_number"
    t.integer  "status",       limit: 1, default: 0, null: false
    t.integer  "role",         limit: 1, default: 0, null: false
    t.date     "birthday"
    t.integer  "team_id",      limit: 1,             null: false
    t.string   "image"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["role"], name: "index_users_on_role", using: :btree
    t.index ["status"], name: "index_users_on_status", using: :btree
    t.index ["team_id"], name: "index_users_on_team_id", using: :btree
  end

end
