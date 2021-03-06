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

ActiveRecord::Schema.define(version: 20160224143308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"
  enable_extension "fuzzystrmatch"

  create_table "imagems", force: :cascade do |t|
    t.string   "file_id"
    t.integer  "pessoa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "imagems", ["pessoa_id"], name: "index_imagems_on_pessoa_id", using: :btree

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome_completo"
    t.string   "alcunha"
    t.date     "data_nascimento"
    t.string   "nome_mae"
    t.string   "nome_pai"
    t.text     "endereco"
    t.string   "cidade"
    t.string   "estado"
    t.string   "zona"
    t.string   "pais"
    t.text     "observacao_1"
    t.text     "tatuagem_descricao"
    t.string   "identidade"
    t.float    "cpf"
    t.text     "pratica_criminal"
    t.string   "mandado_prisao"
    t.text     "condenacao"
    t.string   "sexo"
    t.float    "altura"
    t.string   "cor_do_olho"
    t.string   "cor_cabelo"
    t.text     "marca_sinal"
    t.text     "comp_fisica"
    t.text     "comparsa"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "pg_search_documents", ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "imagems", "pessoas"
end
