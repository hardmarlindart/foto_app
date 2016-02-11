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

ActiveRecord::Schema.define(version: 20160202182130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  add_foreign_key "imagems", "pessoas"
end
