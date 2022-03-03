# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_03_141327) do
  create_table "canais_vendas", force: :cascade do |t|
    t.string "descricao", limit: 20, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome", limit: 100
    t.decimal "preco", precision: 5, scale: 2
    t.integer "canal_venda_id", null: false
    t.index ["canal_venda_id"], name: "index_produtos_on_canal_venda_id"
  end

  add_foreign_key "produtos", "canais_vendas"
end
