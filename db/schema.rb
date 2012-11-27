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

ActiveRecord::Schema.define(:version => 20120906082314) do

  create_table "a113", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "a113_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "alta_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "apple", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "points"
    t.string    "country"
    t.string    "card"
  end

  create_table "apple_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "birth", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
    t.string "birthday"
  end

  add_index "birth", ["userid"], :name => "u_index"

  create_table "birthday", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
    t.string "birthday"
  end

  add_index "birthday", ["userid"], :name => "u_index"

  create_table "bn", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "d3"
  end

  create_table "c8591", :primary_key => "Id", :force => true do |t|
    t.string  "gameid",   :limit => 50
    t.string  "gamename", :limit => 50
    t.string  "type",     :limit => 50
    t.integer "price"
    t.string  "postdate"
  end

  create_table "cm_logs", :force => true do |t|
    t.integer  "lastid"
    t.integer  "count"
    t.integer  "allpoints"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "d3", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "tw_jy"
    t.integer   "us_jy"
    t.integer   "eu_jy"
  end

  create_table "email", :force => true do |t|
    t.string "userid",   :limit => 100
    t.string "password", :limit => 50
  end

  create_table "ewsoft", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "facebook", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "money"
    t.integer   "coin"
    t.integer   "buy"
  end

  create_table "facebook_porker", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "money"
    t.integer   "coin"
  end

  create_table "facebook_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "fungame_zhanghao", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "funmily_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "g1s", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "g2010", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
    t.string "idcard"
  end

  add_index "g2010", ["userid"], :name => "u_index"

  create_table "gamebase", :force => true do |t|
    t.string    "userid",    :limit => 50, :null => false
    t.string    "password",  :limit => 50, :null => false
    t.timestamp "times",                   :null => false
    t.integer   "gpoints"
    t.integer   "pow"
    t.integer   "buypoints"
    t.integer   "points"
  end

  create_table "gamebase_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "gameflier", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "gameinfo8591", :primary_key => "Id", :force => true do |t|
    t.string    "gameid"
    t.string    "gamename"
    t.integer   "count"
    t.integer   "money"
    t.timestamp "time",     :null => false
  end

  create_table "gamejoy_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "gameonehk", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "games"
  end

  create_table "gameonehk_9yin", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "games"
  end

  create_table "gameonehk_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "gameonetw", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "gametower", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "snw"
    t.integer   "clz"
    t.integer   "xklq"
    t.integer   "fs2"
  end

  create_table "gametower_zh", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "garena", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "ldj"
  end

  create_table "gash", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "email"
  end

  create_table "gash_card", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "card"
  end

  create_table "gash_lzg", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "jilu"
  end

  create_table "gash_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "gashhk", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "gashhk_up", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "gashhk_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "gashhkup2wanka", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "state"
  end

  create_table "gashhkup_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "gashtw", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "email"
    t.integer   "mq"
  end

  create_table "goldenplus", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "goldenplus_ok", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "goodgame_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "h", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "hinet", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "huangyi", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "gameid"
  end

  create_table "huser", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "buy"
  end

  create_table "hy", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "lv1"
    t.integer   "g1"
    t.integer   "points1"
    t.integer   "lv2"
    t.integer   "g2"
    t.integer   "points2"
    t.integer   "lv3"
    t.integer   "g3"
    t.integer   "points3"
  end

  create_table "hy2", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "hy_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid",   :limit => 50
    t.string "password", :limit => 50
  end

  create_table "hzhanghao", :force => true do |t|
    t.string "userid",   :limit => 50, :default => "", :null => false
    t.string "password", :limit => 50, :default => "", :null => false
  end

  create_table "ic", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "gameid"
  end

  create_table "iczh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "idcard", :id => false, :force => true do |t|
    t.string "userid",   :limit => 50
    t.string "password", :limit => 50
    t.string "f"
  end

  create_table "idcards", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
    t.string "idcard"
  end

  create_table "idcardss", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "iwan", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "sn"
    t.string    "t"
    t.string    "wupin"
  end

  create_table "iwan_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "jcard", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "jcard_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "jobconfigs", :force => true do |t|
    t.string  "gname",      :limit => 12, :default => "",            :null => false
    t.string  "pname",      :limit => 6,                             :null => false
    t.integer "startid",                  :default => 0,             :null => false
    t.integer "cacheNum",                 :default => 1000,          :null => false
    t.integer "totalNum",                 :default => 30317338,      :null => false
    t.integer "runnum",                   :default => 10,            :null => false
    t.integer "count",                    :default => 1,             :null => false
    t.integer "open",                     :default => 0,             :null => false
    t.string  "datas",                    :default => "1,1,0,0,0,0", :null => false
    t.string  "readTable",  :limit => 50, :default => "users",       :null => false
    t.string  "writeTable", :limit => 50, :default => "",            :null => false
    t.integer "isClose"
    t.string  "testurl"
    t.string  "teststr"
  end

  create_table "joypark_free", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "joypark_new", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "s"
  end

  create_table "kunlun", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "server"
    t.integer   "points"
  end

  create_table "kunlun_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "kunluns", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "server"
    t.integer   "point"
  end

  create_table "lager", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "lager_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "luohan", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "luohan_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "mlbb", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "mq", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "jilu"
  end

  create_table "mq_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "mu", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "mx", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "mx_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "new8591", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "tel"
    t.string    "ips"
    t.string    "u"
    t.string    "p"
    t.string    "idcard"
  end

  create_table "ok8591", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "online08", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "online08_u", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "ucoin"
  end

  create_table "payeasy", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "upoints"
    t.string    "jilu"
  end

  create_table "plaync", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "hongli"
    t.string    "buytime"
    t.string    "acc"
  end

  create_table "plaync_l2", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "s1"
    t.string    "s2"
    t.string    "s3"
    t.string    "s4"
    t.string    "s5"
  end

  create_table "plaync_zhanghao", :primary_key => "Id", :force => true do |t|
    t.string "userid",   :limit => 50, :default => "", :null => false
    t.string "password", :limit => 50, :default => "", :null => false
  end

  create_table "porker1", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "porker_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "porkers", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "porkerzh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "post8591", :primary_key => "Id", :force => true do |t|
    t.string  "gamename"
    t.string  "gameid"
    t.integer "price"
    t.string  "type"
    t.string  "posttime"
  end

  create_table "pp", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "golden"
  end

  create_table "pp_ok", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "golden"
    t.integer   "yz"
  end

  create_table "py", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "upoints"
    t.string    "jilu"
  end

  create_table "sjcs", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "sm", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "sm_zh", :force => true do |t|
    t.string "userid",   :limit => 50, :default => "", :null => false
    t.string "password", :limit => 50, :default => "", :null => false
  end

  create_table "sp", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "sp_time", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "buytime"
  end

  create_table "sp_time_new", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "buytime"
  end

  create_table "sqsd", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "s1"
    t.string    "s2"
    t.string    "s3"
  end

  create_table "t1", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "t2", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "taomi61", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "tel", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "tel"
    t.string "password"
  end

  create_table "temp", :id => false, :force => true do |t|
    t.string "userid",   :limit => 50, :null => false
    t.string "password", :limit => 50, :null => false
  end

  create_table "test", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "test1", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "tkl", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "u700", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "uj", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "mgdg"
    t.string    "tszl"
    t.string    "jdsj"
    t.string    "sgqyz"
    t.string    "fhsg"
    t.string    "sr"
    t.string    "zt"
  end

  create_table "uj_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "users", :primary_key => "Id", :force => true do |t|
    t.string "userid",   :limit => 50, :default => "", :null => false
    t.string "password", :limit => 50, :default => "", :null => false
  end

  add_index "users", ["userid"], :name => "u_index"

  create_table "valofe", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "wanka", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "type"
  end

  create_table "wankaa", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "wankazh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "wayi", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "state"
  end

  create_table "wayi_ge", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "gepoints"
  end

  create_table "wayi_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "wii", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "wdhlny"
    t.integer   "h"
    t.integer   "qlz"
    t.integer   "mngd"
    t.integer   "dhhsd"
    t.integer   "qmdbq"
    t.integer   "oz"
    t.integer   "xmzyw"
  end

  create_table "wii1", :id => false, :force => true do |t|
    t.integer   "id",                     :default => 0, :null => false
    t.string    "userid",   :limit => 50,                :null => false
    t.string    "password", :limit => 50,                :null => false
    t.timestamp "times",                                 :null => false
    t.integer   "points"
    t.integer   "wdhlny"
    t.integer   "h"
    t.integer   "qlz"
    t.integer   "mngd"
    t.integer   "dhhsd"
    t.integer   "qmdbq"
    t.integer   "oz"
  end

  create_table "wii3", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "wdhlny"
    t.integer   "h"
    t.integer   "qlz"
    t.integer   "mngd"
    t.integer   "dhhsd"
    t.integer   "qmdbq"
    t.integer   "oz"
    t.integer   "xmzyw"
  end

  create_table "wii_game", :force => true do |t|
    t.string    "userid",     :limit => 50, :null => false
    t.string    "password",   :limit => 50, :null => false
    t.timestamp "times",                    :null => false
    t.integer   "oz_points"
    t.integer   "oz_jilu"
    t.integer   "dk_points"
    t.integer   "dk_jilu"
    t.integer   "dbo_points"
    t.integer   "dbo_jilu"
  end

  create_table "wii_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "woniu_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "xchuanqi_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "xcq", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "jhcq"
    t.string    "qkwy"
    t.string    "sjcs"
    t.string    "jlyz"
    t.string    "yylz"
  end

  create_table "xigu", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "xigu_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "xin", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "golden"
    t.integer   "lv"
  end

  create_table "xin_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

  create_table "xmzyw", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "yes777", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "tel"
  end

  create_table "yes777_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
    t.string "idcard"
  end

  create_table "yong", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "yong200", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "up200"
  end

  create_table "yong_huodong", :force => true do |t|
    t.string    "userid",   :limit => 50,       :null => false
    t.string    "password", :limit => 50,       :null => false
    t.timestamp "times",                        :null => false
    t.text      "sns",      :limit => 16777215
  end

  create_table "yong_m9", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "yong_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "zhanhun", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "zs", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "zuanshi", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "acc"
  end

  create_table "zuanshi_zh", :primary_key => "Id", :force => true do |t|
    t.string "userid"
    t.string "password"
  end

end
