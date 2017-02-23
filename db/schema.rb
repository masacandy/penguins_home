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

ActiveRecord::Schema.define(version: 20170223150300) do

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "tournament_id",  null: false
    t.integer  "team_id",        null: false
    t.datetime "held_at"
    t.string   "location"
    t.string   "opponent"
    t.integer  "team_score"
    t.integer  "opponent_score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["team_id"], name: "index_games_on_team_id", using: :btree
    t.index ["tournament_id"], name: "index_games_on_tournament_id", using: :btree
  end

  create_table "stats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                             null: false
    t.integer  "game_id",                             null: false
    t.integer  "two_point_made",      default: 0,     null: false
    t.string   "two_point_attempt"
    t.integer  "three_point_made",    default: 0,     null: false
    t.integer  "three_point_attempt"
    t.integer  "free_throw_made",     default: 0,     null: false
    t.integer  "free_throw_attempt"
    t.integer  "offence_rebound"
    t.integer  "deffence_rebound"
    t.integer  "assist"
    t.integer  "block"
    t.integer  "steal"
    t.integer  "play_time"
    t.integer  "turn_over"
    t.integer  "personal_foul",       default: 0,     null: false
    t.boolean  "starting_member",     default: false, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["assist"], name: "index_stats_on_assist", using: :btree
    t.index ["block"], name: "index_stats_on_block", using: :btree
    t.index ["deffence_rebound"], name: "index_stats_on_deffence_rebound", using: :btree
    t.index ["free_throw_made"], name: "index_stats_on_free_throw_made", using: :btree
    t.index ["offence_rebound"], name: "index_stats_on_offence_rebound", using: :btree
    t.index ["starting_member"], name: "index_stats_on_starting_member", using: :btree
    t.index ["steal"], name: "index_stats_on_steal", using: :btree
    t.index ["three_point_made"], name: "index_stats_on_three_point_made", using: :btree
    t.index ["two_point_made"], name: "index_stats_on_two_point_made", using: :btree
    t.index ["user_id", "game_id"], name: "index_stats_on_user_id_and_game_id", unique: true, using: :btree
  end

  create_table "team_tournaments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "team_id",       null: false
    t.integer  "tournament_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["team_id", "tournament_id"], name: "index_team_tournaments_on_team_id_and_tournament_id", unique: true, using: :btree
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "cap_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_teams_on_name", unique: true, using: :btree
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
    t.string   "first_name",                          null: false
    t.string   "last_name",              default: ""
    t.string   "nickname"
    t.integer  "number"
    t.string   "user_name",                           null: false
    t.string   "email",                               null: false
    t.string   "phone_number"
    t.integer  "status",       limit: 1, default: 0,  null: false
    t.integer  "role",         limit: 1, default: 0,  null: false
    t.date     "birthday"
    t.integer  "team_id",      limit: 1,              null: false
    t.string   "image"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["number"], name: "index_users_on_number", using: :btree
    t.index ["role"], name: "index_users_on_role", using: :btree
    t.index ["status"], name: "index_users_on_status", using: :btree
    t.index ["team_id"], name: "index_users_on_team_id", using: :btree
  end

end
