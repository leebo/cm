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

ActiveRecord::Schema.define(:version => 20120301112028) do

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

  create_table "alatmm_new", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "hasqkwy"
    t.integer   "hasxy"
    t.integer   "hasls"
  end

  create_table "altamm", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "hasqkwy"
  end

  create_table "cc", :force => true do |t|
    t.string    "ip", :limit => 50
    t.string    "c",  :limit => 50
    t.timestamp "t",                :null => false
  end

  create_table "cm_logs", :force => true do |t|
    t.integer  "lastid"
    t.integer  "count"
    t.integer  "allpoints"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gash", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.string    "email"
  end

  create_table "gashzh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "idcard", :force => true do |t|
    t.string "userid",   :limit => 50
    t.string "password", :limit => 50
  end

  create_table "iwan_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "jobconfigs", :force => true do |t|
    t.string  "gname",      :limit => 12, :default => "",            :null => false
    t.integer "startid",                  :default => 0,             :null => false
    t.integer "cacheNum",                 :default => 1000,          :null => false
    t.integer "totalNum",                 :default => 30317338,      :null => false
    t.integer "runnum",                   :default => 10,            :null => false
    t.integer "count",                    :default => 1,             :null => false
    t.integer "open",                     :default => 0,             :null => false
    t.string  "datas",                    :default => "1,1,0,0,0,0", :null => false
    t.string  "readTable",  :limit => 50, :default => "users",       :null => false
    t.string  "writeTable", :limit => 50, :default => "",            :null => false
    t.string  "pname",      :limit => 10
    t.string  "testurl"
    t.string  "teststr"
  end

  create_table "kunlun", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "server"
    t.integer   "point"
  end

  create_table "kunluns", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "server"
    t.integer   "point"
  end

  create_table "mlbb", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
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
    t.integer   "tt2"
    t.integer   "aion"
  end

  create_table "plaync_zhanghao", :primary_key => "Id", :force => true do |t|
    t.string "userid",   :limit => 50, :default => "", :null => false
    t.string "password", :limit => 50, :default => "", :null => false
  end

  create_table "sjcs", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "sqsd", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.string    "s1"
    t.string    "s2"
    t.string    "s3"
  end

  create_table "test", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "users", :primary_key => "Id", :force => true do |t|
    t.string "userid",   :limit => 50, :default => "", :null => false
    t.string "password", :limit => 50, :default => "", :null => false
  end

  create_table "wasabiihk", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
    t.integer   "longzhu"
  end

  create_table "x_chuanqi", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
    t.integer   "points"
  end

  create_table "x_zhanghao", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "xchuanqi_zh", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

  create_table "xinstart", :force => true do |t|
    t.string    "userid",   :limit => 50, :null => false
    t.string    "password", :limit => 50, :null => false
    t.timestamp "times",                  :null => false
  end

end
