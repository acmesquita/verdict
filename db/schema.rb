# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_190_613_181_718) do
  create_table 'advantages', force: :cascade do |t|
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'decision_id'
    t.index ['decision_id'], name: 'index_advantages_on_decision_id'
  end

  create_table 'decisions', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'title'
    t.integer 'user_id'
    t.index ['user_id'], name: 'index_decisions_on_user_id'
  end

  create_table 'disadvantages', force: :cascade do |t|
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'decision_id'
    t.index ['decision_id'], name: 'index_disadvantages_on_decision_id'
  end

  create_table 'notes', force: :cascade do |t|
    t.string 'description'
    t.integer 'decision_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['decision_id'], name: 'index_notes_on_decision_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end
